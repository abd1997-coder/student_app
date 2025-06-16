import 'dart:io';

import 'package:flutter/material.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/common/widget/bottomSheets/download_sheet_content.dart';
import 'package:student_app/core/core.dart';
import 'package:video_player/video_player.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class LocalPlayerScreen extends StatefulWidget {
  const LocalPlayerScreen({
    super.key,
    required this.videoModel,
    required this.teacherName,
    required this.myLeason,
  });
  final VideoModel videoModel;
  final String teacherName;
  final bool myLeason;

  @override
  State<LocalPlayerScreen> createState() => _LocalPlayerScreenState();
}

class _LocalPlayerScreenState extends State<LocalPlayerScreen> {
  final List<String> categories = <String>[
    'في هذه الوحدة أيضًا',
    'الأسئلة',
    'المرفقات',
    'الصور',
    'الملفات',
  ];

  int selectedCategory = 0;
  VideoPlayerController? _localVideoController;
  bool isDecodedVideoReady = false;

  @override
  void dispose() {
    _localVideoController?.dispose();
    super.dispose();
  }

  Future<void> playDecodedVideo(String videoId) async {
    try {
      final File decodedFile = await VideoEncoder().decryptFile(
        videoId,
        '1234567890',
      );
      _localVideoController = VideoPlayerController.file(decodedFile);

      await _localVideoController!.initialize();

      _localVideoController!.addListener(() {
        if (mounted) {
          setState(() {}); // تحديث واجهة المستخدم مع كل تغيير
        }
      });

      _localVideoController!.play();
      setState(() {
        isDecodedVideoReady = true;
      });
    } catch (e) {
      print('Error decoding or playing video: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    playDecodedVideo(widget.videoModel.id ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 250,
            pinned: true,
            elevation: 0,
            leading: const SizedBox(),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                onPressed: () {
                  context.router.maybePop();
                },
              ),
            ],
            flexibleSpace:
                isDecodedVideoReady
                    ? Stack(
                      alignment: Alignment.center,
                      children: [
                        VideoPlayer(_localVideoController!),
                        // Video Controls Overlay
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_localVideoController!.value.isPlaying) {
                                _localVideoController!.pause();
                              } else {
                                _localVideoController!.play();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.replay_5,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        final newPosition =
                                            _localVideoController!
                                                .value
                                                .position -
                                            const Duration(seconds: 5);
                                        _localVideoController!.seekTo(
                                          newPosition >= Duration.zero
                                              ? newPosition
                                              : Duration.zero,
                                        );
                                      },
                                    ),
                                    const SizedBox(width: 20),
                                    Icon(
                                      _localVideoController!.value.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      color: Colors.white,
                                      size: 50.0,
                                    ),
                                    const SizedBox(width: 20),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.forward_5,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        final current =
                                            _localVideoController!
                                                .value
                                                .position;
                                        final duration =
                                            _localVideoController!
                                                .value
                                                .duration;
                                        final newPosition =
                                            current +
                                            const Duration(seconds: 5);
                                        _localVideoController!.seekTo(
                                          newPosition <= duration
                                              ? newPosition
                                              : duration,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Video Progress Bar
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black26,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: Text(
                                    _formatDuration(
                                      _localVideoController!.value.position,
                                    ),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: SliderTheme(
                                    data: const SliderThemeData(
                                      thumbColor: Colors.white,
                                      activeTrackColor: Colors.white,
                                      inactiveTrackColor: Colors.white30,
                                      trackHeight: 2.0,
                                    ),
                                    child: Slider(
                                      value:
                                          _localVideoController!
                                              .value
                                              .position
                                              .inSeconds
                                              .toDouble(),
                                      min: 0.0,
                                      max:
                                          _localVideoController!
                                              .value
                                              .duration
                                              .inSeconds
                                              .toDouble(),
                                      onChanged: (value) {
                                        _localVideoController!.seekTo(
                                          Duration(seconds: value.toInt()),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: Text(
                                    _formatDuration(
                                      _localVideoController!.value.duration,
                                    ),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                    : const Center(child: CircularProgressIndicator()),
          ),

          // Header below video
          SliverToBoxAdapter(
            child: Container(
              color: Palette.black,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          widget.videoModel.title ?? "-",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: <Widget>[
                        AssetsManager.svg.graduationCap.svg(
                          color: Palette.darkGray,
                        ),
                        const SizedBox(width: 4),
                        Text(widget.teacherName, style: const TextStyle()),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'سيتم في هذا الفيديو شرح نظرة عامة عن الوحدة وتعريف الأعداد العقدية والعمليات عليها بصورة واضحة وبسيطة',
                      style: TextStyle(color: Palette.darkGray, fontSize: 15),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
