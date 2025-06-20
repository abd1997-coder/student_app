import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart' as yt;
import 'package:youtube_muxer_2025/youtube_muxer_2025.dart' as models;
import 'models/download_progress.dart';

/// Main class for downloading and processing YouTube videos.
///
/// This class provides methods to fetch available video qualities and
/// download videos from YouTube with progress tracking.
class YoutubeDownloader {
  static const MethodChannel platform = MethodChannel('youtube_muxer_2025');
  final _yt = YoutubeExplode();

  /// Creates a new YouTube downloader instance.
  YoutubeDownloader();

  /// Checks if a video stream is compatible with Android MediaMuxer
  bool _isCompatibleVideoStream(yt.VideoStreamInfo stream) {
    final codec = stream.videoCodec.toLowerCase();
    final container = stream.container.name.toLowerCase();

    // Must be MP4 container with H.264/AVC codec
    return container == 'mp4' &&
        codec.contains('avc') &&
        !codec.contains('av1') &&
        !codec.contains('vp8') &&
        !codec.contains('vp9');
  }

  /// Checks if an audio stream is compatible with Android MediaMuxer
  bool _isCompatibleAudioStream(yt.AudioStreamInfo stream) {
    return stream.codec.mimeType.contains('audio/mp4');
  }

  /// Retrieves all available quality options for a YouTube video.
  ///
  /// [videoUrl] is the full YouTube video URL.
  ///
  /// Returns a list of [models.VideoQuality] objects representing the available
  /// quality options for the video.
  Future<List<models.VideoQuality>> getQualities(String videoUrl) async {
    try {
      final video = await _yt.videos.get(videoUrl);
      final manifest = await _yt.videos.streamsClient.getManifest(video.id);

      // Filter for compatible video streams only
      final videoStreams =
          manifest.videoOnly.where(_isCompatibleVideoStream).toList();

      // Also check if we have at least one compatible audio stream
      final hasCompatibleAudio =
          manifest.audioOnly.any(_isCompatibleAudioStream);

      if (!hasCompatibleAudio) {
        throw Exception('No compatible audio stream found for this video');
      }

      final qualities = videoStreams
          .map((stream) => models.VideoQuality(
                quality: stream.qualityLabel,
                url: stream.url.toString(),
                size: stream.size.totalBytes,
                container: stream.container.name,
                codec: stream.videoCodec,
                bitrate: stream.bitrate.bitsPerSecond,
                fps: stream.framerate.framesPerSecond.toInt(),
              ))
          .toList();

      // Sort by resolution (highest to lowest)
      qualities.sort((a, b) {
        final aHeight =
            int.tryParse(a.quality.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;
        final bHeight =
            int.tryParse(b.quality.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;
        return bHeight.compareTo(aHeight);
      });

      return qualities;
    } catch (e) {
      throw Exception('Failed to get video qualities: $e');
    }
  }

  /// Downloads a YouTube video in the specified quality.
  ///
  /// [quality] is the selected [models.VideoQuality] option from [getQualities].
  /// [videoUrl] is the full YouTube video URL.
  ///
  /// Returns a stream of [DownloadProgress] objects that provide real-time
  /// updates about the download progress.
  Stream<DownloadProgress> downloadVideo(
    models.VideoQuality quality,
    String videoUrl,
    String videoId,
  ) async* {
    try {
      final video = await _yt.videos.get(videoUrl);
      final manifest = await _yt.videos.streamsClient.getManifest(video.id);

      final videoStream = manifest.videoOnly.firstWhere(
        (s) => s.qualityLabel == quality.quality && _isCompatibleVideoStream(s),
        orElse: () => throw Exception('Selected quality no longer available'),
      );

      final audioStream = manifest.audioOnly
          .where(_isCompatibleAudioStream)
          .reduce((a, b) =>
              a.bitrate.bitsPerSecond > b.bitrate.bitsPerSecond ? a : b);

      final dir = await getApplicationDocumentsDirectory();
      final tempVideoPath = '${dir.path}/downloads/${videoId}_video.mp4';
      final tempAudioPath = '${dir.path}/downloads/${videoId}_audio.m4a';
      // final outputPath = '${dir.path}/${_sanitize(video.title)}.mp4';
      final outputPath = '${dir.path}/downloads/${videoId}_mearged.mp4';

      // Video download with progress
      final videoFile = File(tempVideoPath).openWrite();
      var totalVideoBytes = 0;
      final videoTotalBytes = videoStream.size.totalBytes;

      await for (final chunk in _yt.videos.streamsClient.get(videoStream)) {
        videoFile.add(chunk);
        totalVideoBytes += chunk.length;
        final videoProgress = totalVideoBytes / videoTotalBytes;
        // Scale video progress to 0-45%
        yield DownloadProgress(
          progress: (videoProgress * 0.45),
          estimatedTimeRemaining: 0,
          status:
              'Downloading video: ${(videoProgress * 100).toStringAsFixed(1)}%',
        );
      }
      await videoFile.close();

      // Audio download with progress
      final audioFile = File(tempAudioPath).openWrite();
      var totalAudioBytes = 0;
      final audioTotalBytes = audioStream.size.totalBytes;

      await for (final chunk in _yt.videos.streamsClient.get(audioStream)) {
        audioFile.add(chunk);
        totalAudioBytes += chunk.length;
        final audioProgress = totalAudioBytes / audioTotalBytes;
        // Scale audio progress to 45-90%
        yield DownloadProgress(
          progress: 0.45 + (audioProgress * 0.45),
          estimatedTimeRemaining: 0,
          status:
              'Downloading audio: ${(audioProgress * 100).toStringAsFixed(1)}%',
        );
      }
      await audioFile.close();

      yield DownloadProgress(
        progress: 0.9,
        estimatedTimeRemaining: 0,
        status: 'Muxing files...',
      );

      var success = false;
      var attempts = 0;
      final maxAttempts = 2;

      while (!success && attempts < maxAttempts) {
        attempts++;
        success = await platform.invokeMethod<bool>('muxVideoAndAudio', {
              'videoPath': tempVideoPath,
              'audioPath': tempAudioPath,
              'outputPath': outputPath,
              'audioConfig': {
                'sampleRate': audioStream.bitrate.bitsPerSecond,
                'channelCount': 2,
                'channelMask': 3,
              }
            }) ??
            false;

        if (!success && attempts < maxAttempts) {
          yield DownloadProgress(
            progress: 0.9,
            estimatedTimeRemaining: 0,
            status:
                'Retrying muxing (attempt ${attempts + 1}/${maxAttempts})...',
          );
        }
      }

      if (!success) {
        cleanTempFiles(tempVideoPath, tempAudioPath);
        throw Exception('Muxing failed after $maxAttempts attempts');
      }

      // Clean up temp files
      cleanTempFiles(tempVideoPath, tempAudioPath);

      yield DownloadProgress(
        progress: 1.0,
        estimatedTimeRemaining: 0,
        status: 'Download completed',
        outputPath: outputPath,
        title: video.title,
      );
    } catch (e) {
      throw Exception('Download failed: $e');
    }
  }

  cleanTempFiles(String videoPath, String audioPath) {
    File(videoPath).delete();
    File(audioPath).delete();
  }

  /// Sanitizes a filename by replacing invalid characters.
  // String _sanitize(String fileName) {
  //   return fileName
  //       .replaceAll(RegExp(r'[<>:"/\\|?*]'), '_')
  //       .replaceAll(RegExp(r'\s+'), '_');
  // }
}
