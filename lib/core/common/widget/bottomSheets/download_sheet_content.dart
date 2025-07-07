import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:youtube_muxer_2025/youtube_muxer_2025.dart';
import 'package:youtube_muxer_2025/youtube_muxer_2025.dart' as models;
import 'dart:io';

void downloadSheet({
  required BuildContext context,
  required String videoUrl,
  required Function(String) onQualitySelected,
  required String videoId,
  required Function(int) onStartDownload,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    showDragHandle: false,
    scrollControlDisabledMaxHeightRatio: 350,
    backgroundColor: Colors.transparent,
    builder:
        (_) => DownloadSheetContent(
          videoUrl: videoUrl,
          onQualitySelected: onQualitySelected,
          videoTitle: videoId,
          onStartDownload: onStartDownload,
        ),
  );
}

class DownloadSheetContent extends StatefulWidget {
  const DownloadSheetContent({
    super.key,
    required this.videoUrl,
    required this.onQualitySelected,
    required this.videoTitle,
    required this.onStartDownload,
  });
  final String videoUrl;
  final Function(String) onQualitySelected;
  final String videoTitle;
  final Function(int) onStartDownload;

  @override
  State<DownloadSheetContent> createState() => _DownloadSheetContentState();
}

class _DownloadSheetContentState extends State<DownloadSheetContent> {
  VideoQuality? selectedValue;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final YoutubeDownloader _downloader = YoutubeDownloader();
  bool _isLoading = true;
  List<VideoQuality> _qualities = <VideoQuality>[];

  @override
  void initState() {
    super.initState();
    _initializeNotifications();
    _loadQualities();
  }

  Future<void> _initializeNotifications() async {
    const AndroidInitializationSettings androidInitialize =
        AndroidInitializationSettings('mipmap/ic_launcher');
    const InitializationSettings initializationSettings =
        InitializationSettings(android: androidInitialize);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> _loadQualities() async {
    try {
      if (!mounted) return; // ✅ تحقق قبل setState
      setState(() => _isLoading = true);

      final List<VideoQuality> qualities = await _downloader.getQualities(
        widget.videoUrl,
      );

      if (!mounted) return; // ✅ تحقق مرة ثانية بعد await
      setState(() {
        _qualities = qualities;
        _isLoading = false;
      });
    } catch (e) {
      print('Error loading qualities: $e');

      if (!mounted) return; // ✅ تحقق قبل setState
      setState(() => _isLoading = false);

      showSnackBar(
        context: context,
        message: 'فشل في تحميل جودات الفيديو',
        isError: true,
      );
    }
  }

  Future<void> _showProgressNotification(
    int progress,
    int notificationId,
  ) async {
    final AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'download_channel',
          'Downloads',
          channelDescription: 'Download progress notifications',
          importance: Importance.high,
          priority: Priority.high,
          showProgress: true,
          onlyAlertOnce: true,
          maxProgress: 100,
          progress: progress,
          autoCancel: false,
        );

    await flutterLocalNotificationsPlugin.show(
      notificationId,
      'جاري تحميل الفيديو',
      'اكتمل التحميل بنسبة $progress%',
      NotificationDetails(android: androidDetails),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 24),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: const Text(
                "تحميل الفيديو بدقة ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            if (_isLoading)
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CircularProgressIndicator(),
                ),
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    _qualities.map((VideoQuality quality) {
                      return Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                "${bytesToMB(quality.size).toStringAsFixed(2)} MB",
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Text(
                            quality.quality.toString(),
                            style: const TextStyle(fontSize: 16),
                          ),
                          Radio<VideoQuality>(
                            value: quality,
                            groupValue: selectedValue,
                            onChanged: (VideoQuality? value) {
                              setState(() {
                                selectedValue = value!;
                                widget.onQualitySelected(quality.url);
                              });
                            },
                          ),
                        ],
                      );
                    }).toList(),
              ),
            const SizedBox(height: 20),
            _isLoading
                ? const SizedBox()
                : GlobalButton(
                  height: 50,
                  controller: GlobalButtonController(),
                  onPressed: () async {
                    context.maybePop();
                    if (selectedValue != null) {
                      startDownload(selectedValue!, widget.videoTitle);
                    }
                  },
                  borderRadius: 50,
                  child: Text(
                    "تحميل",
                    style: context.bodyMedium?.copyWith(
                      color: context.colorScheme.surface,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  double bytesToMB(int bytes) {
    return bytes / (1024 * 1024);
  }

  Future<void> startDownload(VideoQuality quality, String videoId) async {
    final Directory appDir = await getApplicationDocumentsDirectory();
    final Directory downloadsDir = Directory('${appDir.path}/downloads');
    final String filePath = '${downloadsDir.path}/${videoId}_mearged.mp4';
    final File inputFile = File(filePath);
    widget.onStartDownload(0);
    try {
      if (widget.videoUrl.isEmpty) {
        throw Exception('Invalid URL: URL is empty');
      }
      if (!downloadsDir.existsSync()) {
        downloadsDir.createSync(recursive: true);
      }

      final int notificationId = DateTime.now().millisecondsSinceEpoch
          .remainder(100000);

      if (!mounted) return;

      showSnackBar(context: context, message: 'جاري التحميل...');

      final Stream<DownloadProgress> stream = _downloader.downloadVideo(
        models.VideoQuality(
          quality: quality.quality,
          url: widget.videoUrl,
          size: 0,
          container: 'mp4',
          codec: 'avc1',
          bitrate: 0,
          fps: 30,
        ),
        widget.videoUrl,
        videoId,
      );

      stream.listen(
        (DownloadProgress progress) async {
          final int progressPercent = (progress.progress * 100).round();
          await _showProgressNotification(progressPercent, notificationId);
          widget.onStartDownload(progressPercent);
        },
        onDone: () async {
          try {
            widget.onStartDownload(100);
            if (!await inputFile.exists()) {
              print('File not found: $filePath');
            } else {
              final String protectedPath =
                  await VideoProtector.saveObfuscatedVideo(inputFile, videoId);
              print('Protected video saved at: $protectedPath');
            }

            const AndroidNotificationDetails androidDetails =
                AndroidNotificationDetails(
                  'download_channel',
                  'Downloads',
                  channelDescription: 'Download complete notification',
                  importance: Importance.high,
                  priority: Priority.high,
                );

            await flutterLocalNotificationsPlugin.show(
              notificationId,
              'اكتمل التحميل',
              'تم تحميل وتشفير الفيديو بنجاح بجودة ${quality.quality}p',
              const NotificationDetails(android: androidDetails),
            );
          } catch (e) {
            if (mounted) {
              showSnackBar(
                context: context,
                message: 'فشل في تشفير الفيديو: $e',
                isError: true,
              );
            }
          }
        },
        onError: (e) {
          const AndroidNotificationDetails androidDetails =
              AndroidNotificationDetails(
                'download_channel',
                'Downloads',
                channelDescription: 'Download Failed',
                importance: Importance.high,
                priority: Priority.high,
              );
          flutterLocalNotificationsPlugin.show(
            notificationId,
            'تحميل الفيديو',
            'فشل تحميل الفيديو: $e',
            const NotificationDetails(android: androidDetails),
          );
        },
        cancelOnError: true,
      );
    } catch (e, stackTrace) {
      if (kDebugMode) {
        print('❌ Download error: $e');
        print('❌ Stack trace: $stackTrace');
      }
      if (mounted) {
        showSnackBar(
          context: context,
          message: 'فشل تحميل الفيديو: $e',
          isError: true,
        );
      }
    }
  }
}

class VideoProtector {
  static const int headerSize = 512;

  /// Save the downloaded video with a fake header and a fake extension,
  /// then delete the original file.
  static Future<String> saveObfuscatedVideo(
    File inputFile,
    String videoId,
  ) async {
    final Directory appDir = await getApplicationDocumentsDirectory();
    final Directory protectedDir = Directory('${appDir.path}/protected');

    if (!await protectedDir.exists()) {
      await protectedDir.create(recursive: true);
    }

    final String outputPath = '${protectedDir.path}/$videoId.lockedvid';
    final IOSink output = File(outputPath).openWrite();

    try {
      // Add a fake 512-byte header to make it unplayable by external players
      final Uint8List fakeHeader = Uint8List.fromList(
        List.generate(headerSize, (int i) => (i * 7 + 3) % 256),
      );

      output.add(fakeHeader);

      // Write the actual video content
      final Stream<List<int>> videoStream = inputFile.openRead();
      await videoStream.forEach(output.add);

      await output.close();

      // ✅ Delete the original file after obfuscation is done
      if (await inputFile.exists()) {
        await inputFile.delete();
      }

      return outputPath;
    } catch (e) {
      await output.close(); // Make sure we close on error too
      rethrow;
    }
  }
}

class VideoReader {
  static const int headerSize = 512;

  /// Prepare obfuscated video by stripping the fake header
  static Future<File> prepareForPlayback(
    String obfuscatedPath,
    String videoId,
  ) async {
    final Directory appDir = await getApplicationDocumentsDirectory();
    final Directory tempDir = Directory('${appDir.path}/temp');

    if (!await tempDir.exists()) {
      await tempDir.create(recursive: true);
    }

    final String fixedPath = '${tempDir.path}/$videoId.mp4';

    final Stream<List<int>> inputFile = File(obfuscatedPath).openRead();
    final IOSink output = File(fixedPath).openWrite();

    bool skipped = false;
    int totalRead = 0;

    await for (final List<int> chunk in inputFile) {
      if (!skipped) {
        if (totalRead + chunk.length <= headerSize) {
          totalRead += chunk.length;
          continue; // skip whole chunk
        } else {
          // Skip only remaining bytes of the header
          final int toSkip = headerSize - totalRead;
          final List<int> remaining = chunk.sublist(toSkip);
          output.add(remaining);
          skipped = true;
        }
      } else {
        output.add(chunk);
      }
    }

    await output.close();
    return File(fixedPath);
  }
}
