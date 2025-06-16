import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/common/function/decrypt_params.dart';
import 'package:student_app/core/core.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:youtube_muxer_2025/youtube_muxer_2025.dart';
import 'package:youtube_muxer_2025/youtube_muxer_2025.dart' as models;
import 'dart:io';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as p;

void downloadSheet({
  required BuildContext context,
  required String videoUrl,
  required Function(String) onQualitySelected,
  required String videoId,
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
        ),
  );
}

class DownloadSheetContent extends StatefulWidget {
  const DownloadSheetContent({
    super.key,
    required this.videoUrl,
    required this.onQualitySelected,
    required this.videoTitle,
  });
  final String videoUrl;
  final Function(String) onQualitySelected;
  final String videoTitle;
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
      setState(() => _isLoading = true);
      final List<VideoQuality> qualities = await _downloader.getQualities(
        widget.videoUrl,
      );
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
                                quality.quality.toString(),
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Text(
                            quality.fps.toString(),
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

  Future<void> startDownload(VideoQuality quality, String videoId) async {
    final Directory appDir = await getApplicationDocumentsDirectory();
    final Directory downloadsDir = Directory('${appDir.path}/downloads');
    final Directory encryptedDir = Directory('${appDir.path}/encrypted');

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
        },
        onDone: () async {
          try {
            if (!encryptedDir.existsSync()) {
              encryptedDir.createSync(recursive: true);
            }
            await VideoEncoder().encryptFile(
              File("${appDir.path}/downloads/${videoId}_mearged.mp4"),
              '1234567890',
              videoId,
            );
            print('encryptedPath: encrypted done ');
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

class VideoEncoder {
  Future<String> encryptFile(
    File inputFile,
    String password,
    String videoId,
  ) async {
    final key = encrypt.Key.fromUtf8(
      sha256.convert(utf8.encode(password)).toString().substring(0, 32),
    );
    final iv = encrypt.IV.fromSecureRandom(16);
    final encrypter = encrypt.Encrypter(
      encrypt.AES(key, mode: encrypt.AESMode.cbc),
    );

    final Directory dir = await getApplicationDocumentsDirectory();
    final Directory encryptedDir = Directory('${dir.path}/encrypted');
    if (!await encryptedDir.exists()) {
      await encryptedDir.create(recursive: true);
    }
    final String encryptedPath = '${encryptedDir.path}/$videoId.enc';
    final outFile = File(encryptedPath).openWrite();

    // Write IV at the start
    outFile.add(iv.bytes);

    final input = inputFile.openRead();
    await for (final chunk in input) {
      final encryptedChunk = encrypter.encryptBytes(chunk, iv: iv);
      outFile.add(encryptedChunk.bytes);
    }

    await outFile.close();
    await deleteDownloadsFolder();
    print('✅ Encrypted to: $encryptedPath');
    return encryptedPath;
  }

  Future<File> decryptFile(String videoTitle, String password) async {
    final appDir = await getApplicationDocumentsDirectory();

    final String decryptedPath = await compute(
      decryptFileIsolate,
      DecryptParams(
        videoTitle: videoTitle,
        password: password,
        appDirPath: appDir.path,
      ),
    );
    print('✅ decryptedPath: $decryptedPath');
    return File(decryptedPath);
  }

  Future<void> deleteDownloadsFolder() async {
    final Directory appDir = await getApplicationDocumentsDirectory();
    final Directory downloadsDir = Directory(p.join(appDir.path, 'downloads'));

    if (await downloadsDir.exists()) {
      await downloadsDir.delete(recursive: true);
      print('✅ downloads folder deleted successfully');
    } else {
      print('ℹ️ downloads folder does not exist');
    }
  }
}
