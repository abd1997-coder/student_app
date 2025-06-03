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
        ),
  );
}

class DownloadSheetContent extends StatefulWidget {
  const DownloadSheetContent({
    super.key,
    required this.videoUrl,
    required this.onQualitySelected,
  });
  final String videoUrl;
  final Function(String) onQualitySelected;

  @override
  State<DownloadSheetContent> createState() => _DownloadSheetContentState();
}

class _DownloadSheetContentState extends State<DownloadSheetContent> {
  VideoQuality? selectedValue;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final _downloader = YoutubeDownloader();
  bool _isLoading = true;
  List<VideoQuality> _qualities = [];

  @override
  void initState() {
    super.initState();
    _initializeNotifications();
    _loadQualities();
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

  Future<void> _loadQualities() async {
    try {
      setState(() => _isLoading = true);
      final qualities = await _downloader.getQualities(widget.videoUrl);
      setState(() {
        _qualities = qualities;
        _isLoading = false;
      });
    } catch (e) {
      print('Error loading qualities: $e');
      setState(() => _isLoading = false);
      if (mounted) {
        showSnackBar(
          context: context,
          message: 'فشل في تحميل جودات الفيديو',
          isError: true,
        );
      }
    }
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
                    _qualities
                        .map(
                          (VideoQuality quality) => Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Text(
                                    quality.quality.toString(),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                quality.fps.toString(),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
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
                          ),
                        )
                        .toList(),
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

  Future<void> startDownload(VideoQuality quality) async {
    try {
      // Add URL validation
      if (widget.videoUrl.isEmpty) {
        throw Exception('Invalid URL: URL is empty');
      }

      final Directory appDir = await getApplicationDocumentsDirectory();
      final Directory downloadsDir = Directory('${appDir.path}/downloads');
      if (!downloadsDir.existsSync()) {
        downloadsDir.createSync();
      }

      final int notificationId = DateTime.now().millisecondsSinceEpoch
          .remainder(100000);

      if (!mounted) return;
      showSnackBar(context: context, message: 'جاري التحميل...');

      // Start the download using YoutubeDownloader
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
      );
      stream.listen(
        (DownloadProgress progress) async {
          final int progressPercent = (progress.progress * 100).round();
          await _showProgressNotification(progressPercent, notificationId);
          if (progress.progress >= 1.0) {
            // Download completed
            const androidDetails = AndroidNotificationDetails(
              'download_channel',
              'Downloads',
              channelDescription: 'Download complete notification',
              importance: Importance.high,
              priority: Priority.high,
            );

            await flutterLocalNotificationsPlugin.show(
              notificationId,
              'اكتمل التحميل',
              'تم تحميل الفيديو بنجاح بجودة ${quality.quality}p',
              const NotificationDetails(android: androidDetails),
            );

            if (!mounted) return;
            showSnackBar(
              context: context,
              message: 'تم تحميل الفيديو بنجاح بجودة ${quality.quality}p',
              isError: false,
            );
          }
        },
        onError: (e) {
          const AndroidNotificationDetails androidDetails =
              AndroidNotificationDetails(
                'download_channel',
                'Downloads',
                channelDescription: 'Download Failed ',
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
      );
    } catch (e, stackTrace) {
      // Enhanced error logging
      if (kDebugMode) {
        print('Download error: $e');
        print('Stack trace: $stackTrace');
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
