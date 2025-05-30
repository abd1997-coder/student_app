import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';
import 'package:y_player/y_player.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:dio/dio.dart';
import 'package:ffmpeg_kit_flutter_new/ffmpeg_kit.dart';
import 'package:ffmpeg_kit_flutter_new/ffmpeg_session.dart';
import 'package:ffmpeg_kit_flutter_new/return_code.dart';
import 'dart:io';

void downloadSheet({
  required BuildContext context,
  required List<QualityOption> qualities,
  required Function(String) onQualitySelected,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    showDragHandle: false,
    scrollControlDisabledMaxHeightRatio: 350,
    backgroundColor: Colors.transparent,
    builder:
        (_) => DownloadSheetContent(
          qualities: qualities,
          onQualitySelected: onQualitySelected,
        ),
  );
}

class DownloadSheetContent extends StatefulWidget {
  const DownloadSheetContent({
    super.key,
    required this.qualities,
    required this.onQualitySelected,
  });
  final List<QualityOption> qualities;
  final Function(String) onQualitySelected;
  @override
  State<DownloadSheetContent> createState() => _DownloadSheetContentState();
}

class _DownloadSheetContentState extends State<DownloadSheetContent> {
  QualityOption? selectedValue;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    _initializeNotifications();
  }

  Future<void> _initializeNotifications() async {
    const androidInitialize = AndroidInitializationSettings(
      'mipmap/ic_launcher',
    );
    const initializationSettings = InitializationSettings(
      android: androidInitialize,
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> _showProgressNotification(
    int progress,
    int notificationId,
  ) async {
    final androidDetails = AndroidNotificationDetails(
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
          children: [
            // --- title ---
            const SizedBox(height: 24),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: const Text(
                "تحميل الفيديو بدقة ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            // sound
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  widget.qualities
                      .sublist(1, widget.qualities.length - 1)
                      .map(
                        (quality) => Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: Text(
                                  quality.height.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              quality.label.toString(),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Radio<QualityOption>(
                              value: quality,
                              groupValue: selectedValue,
                              onChanged: (QualityOption? value) {
                                setState(() {
                                  selectedValue = value!;
                                  widget.onQualitySelected(quality.url);
                                });
                              },
                            ),
                          ],
                        ),
                      )
                      .toList(),
            ),

            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 8),
            //   child: const Text(
            //     "تحميل الصوت ",
            //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //   ),
            // ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         margin: const EdgeInsets.symmetric(horizontal: 8),
            //         child: const Text(
            //           "دقة منخفضة 240",
            //           style: TextStyle(
            //             fontSize: 16,
            //             fontWeight: FontWeight.normal,
            //           ),
            //         ),
            //       ),
            //     ),
            //     const Text(
            //       "2.3م.ب",
            //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            //     ),
            //     Radio<String>(
            //       value: selectedValue?.url ?? "",
            //       groupValue: selectedValue?.url ?? "",
            //       onChanged: (value) {
            //         setState(() {
            //           selectedValue = value;
            //         });
            //       },
            //     ),
            //   ],
            // ),
            const SizedBox(height: 20),
            GlobalButton(
              height: 50,
              controller: GlobalButtonController(),
              onPressed: () async {
                context.maybePop();
                if (selectedValue != null) {
                  startDownload(selectedValue!);
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

  Future<void> startDownload(QualityOption quality) async {
    final dio = Dio(
      BaseOptions(
        headers: {
          'User-Agent':
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120 Safari/537.36',
        },
      ),
    );

    try {
      final appDir = await getApplicationDocumentsDirectory();
      final tempDir = await getDownloadsDirectory();

      // Create a downloads directory if it doesn't exist
      final downloadsDir = Directory('${appDir.path}/downloads');
      if (!downloadsDir.existsSync()) {
        downloadsDir.createSync();
      }

      // Temporary files for video and audio
      final tempVideoPath = '${tempDir?.path}/temp_video.mp4';
      final tempAudioPath = '${tempDir?.path}/temp_audio.mp3';
      final outputPath = '${downloadsDir.path}/video_${quality.height}p.mp4';

      final notificationId = DateTime.now().millisecondsSinceEpoch.remainder(
        100000,
      );

      if (!mounted) return;
      showSnackBar(context: context, message: 'جاري التحميل...');

      // Download video
      await dio.download(
        quality.url,
        tempVideoPath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final progress = (received / total * 50).toInt(); // First 50%
            _showProgressNotification(progress, notificationId);
          }
        },
      );

      // Get audio URL from manifest (using index 1 which should contain audio)
      final audioUrl = widget.qualities[1].url;
      print('Audio URL: $audioUrl');

      // Download audio
      await dio.download(
        audioUrl,
        tempAudioPath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final progress = 50 + (received / total * 40).toInt(); // Next 40%
            _showProgressNotification(progress, notificationId);
          }
        },
      );

      print('tempVideoPath: $tempVideoPath');
      print('tempAudioPath: $tempAudioPath');
      print('outputPath: $outputPath');
      // Show merging progress
      _showProgressNotification(90, notificationId);

      // Check if files exist
      if (!File(tempVideoPath).existsSync() ||
          !File(tempAudioPath).existsSync()) {
        throw Exception('Downloaded files not found');
      }

      print('Starting FFmpeg merge...');
      // Merge video and audio using FFmpeg with more detailed command
      final FFmpegSession session = await FFmpegKit.execute(
        '-i "${tempVideoPath.replaceAll('\\', '/')}" -i "${tempAudioPath.replaceAll('\\', '/')}" -c:v copy -c:a aac -strict experimental "${outputPath.replaceAll('\\', '/')}"',
      );

      final ReturnCode? returnCode = await session.getReturnCode();
      print('FFmpeg return code: ${returnCode?.getValue() ?? "unknown"}');

      // Get FFmpeg output for debugging
      final output = await session.getOutput();
      print('FFmpeg output: $output');

      // Clean up temporary files
      try {
        // if (File(tempVideoPath).existsSync()) File(tempVideoPath).deleteSync();
        // if (File(tempAudioPath).existsSync()) File(tempAudioPath).deleteSync();
      } catch (e) {
        print('Error cleaning up temp files: $e');
      }

      if (returnCode?.isValueSuccess() ?? false) {
        // Show completion notification
        const androidDetails = AndroidNotificationDetails(
          'download_channel',
          'Downloads',
          channelDescription: 'Download progress notifications',
          importance: Importance.high,
          priority: Priority.high,
        );

        await flutterLocalNotificationsPlugin.show(
          notificationId,
          'اكتمل التحميل',
          'تم تحميل الفيديو بنجاح بجودة ${quality.height}p',
          const NotificationDetails(android: androidDetails),
        );

        if (!mounted) return;
        showSnackBar(
          context: context,
          message: 'تم تحميل الفيديو بنجاح بجودة ${quality.height}p',
          isError: false,
        );
        print('Video saved to: $outputPath');
      } else {
        throw Exception(
          'Failed to merge video and audio. FFmpeg return code: ${returnCode?.getValue() ?? "unknown"}',
        );
      }
    } catch (e) {
      print('Download error: $e');
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
