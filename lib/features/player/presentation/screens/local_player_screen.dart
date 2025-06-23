import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/common/widget/bottomSheets/download_sheet_content.dart';
import 'package:student_app/core/core.dart';
import 'package:video_player/video_player.dart';
import 'package:path_provider/path_provider.dart';
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
  VideoPlayerController? _localVideoController;
  bool isDecodedVideoReady = false;
  bool _isFullScreen = false;
  bool _isSeeking = false;
  double _seekValue = 0.0;
  bool _showControls = true;
  Timer? _hideTimer;

  @override
  void initState() {
    super.initState();
    playDecodedVideo(widget.videoModel.id ?? "");
  }

  @override
  void dispose() {
    _hideTimer?.cancel();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    _localVideoController?.dispose();
    super.dispose();
  }

  void _toggleControls() {
    setState(() {
      _showControls = !_showControls;
    });

    _hideTimer?.cancel();
    if (_showControls) {
      _hideTimer = Timer(const Duration(seconds: 3), () {
        setState(() {
          _showControls = false;
        });
      });
    }
  }

  Future<void> playDecodedVideo(String videoId) async {
    try {
      final Directory appDir = await getApplicationDocumentsDirectory();
      final String path = '${appDir.path}/protected/$videoId.lockedvid';
      final File playableFile = await VideoReader.prepareForPlayback(
        path,
        videoId,
      );

      _localVideoController = VideoPlayerController.file(playableFile);
      await _localVideoController!.initialize();
      _localVideoController!.addListener(() {
        if (mounted) setState(() {});
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
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_isFullScreen) {
          _toggleFullScreen();
          return false;
        }
        return true;
      },
      child: Scaffold(
        body:
            _isFullScreen
                ? _buildFullScreenVideo()
                : CustomScrollView(
                  slivers: <Widget>[
                    SliverAppBar(
                      backgroundColor: Colors.black,
                      expandedHeight: 250,
                      pinned: true,
                      elevation: 0,
                      leading: const SizedBox(),
                      actions: <Widget>[
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                          onPressed: () => context.router.maybePop(),
                        ),
                      ],
                      flexibleSpace:
                          isDecodedVideoReady
                              ? _buildVideoPlayer()
                              : const Center(
                                child: CircularProgressIndicator(),
                              ),
                    ),
                    SliverToBoxAdapter(child: _buildVideoInfo()),
                  ],
                ),
      ),
    );
  }

  Widget _buildVideoPlayer() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        VideoPlayer(_localVideoController!),
        _buildControlsOverlay(),
        _buildProgressBar(),
        Positioned(
          top: 20,
          right: 20,
          child: IconButton(
            icon: Icon(
              _isFullScreen ? Icons.fullscreen_exit : Icons.fullscreen,
              color: Colors.white,
              size: 30,
            ),
            onPressed: _toggleFullScreen,
          ),
        ),
      ],
    );
  }

  Widget _buildFullScreenVideo() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Center(child: VideoPlayer(_localVideoController!)),
        _buildControlsOverlay(),
        _buildProgressBar(),
        Positioned(
          top: 20,
          right: 20,
          child: IconButton(
            icon: const Icon(
              Icons.fullscreen_exit,
              color: Colors.white,
              size: 30,
            ),
            onPressed: _toggleFullScreen,
          ),
        ),
      ],
    );
  }

  void _toggleFullScreen() {
    setState(() {
      _isFullScreen = !_isFullScreen;
      if (_isFullScreen) {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
        SystemChrome.setPreferredOrientations(<DeviceOrientation>[
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ]);
      } else {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
        SystemChrome.setPreferredOrientations(<DeviceOrientation>[
          DeviceOrientation.portraitUp,
        ]);
      }
    });
  }

  Widget _buildControlsOverlay() {
    return Container(
      color: _showControls? Colors.black.withOpacity(0.6):null,
      width: double.infinity,
      height: double.infinity,
      child: GestureDetector(
        onTap: _toggleControls,
        child: Container(
          color: Colors.transparent,
          child: AnimatedOpacity(
            opacity: _showControls ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            child: Stack(
              alignment: Alignment.center,
              children: [
                InkWell(
                  onTap: () {
                    if (_localVideoController!.value.isPlaying) {
                      _localVideoController!.pause();
                    } else {
                      _localVideoController!.play();
                    }
                  },
                  child: Icon(
                    (_localVideoController!.value.isPlaying)
                        ? Icons.pause_rounded
                        : Icons.play_arrow,
                    color: Colors.white,
                    size: 50.0,
                  ),
                ),

                // زر الرجوع 5 ثوانٍ
                Positioned(
                  left: 40,
                  child: IconButton(
                    icon: const Icon(
                      Icons.forward_5,
                      size: 40,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      final current = _localVideoController!.value.position;
                      final newPosition = current - const Duration(seconds: 5);
                      _localVideoController!.seekTo(
                        newPosition > Duration.zero
                            ? newPosition
                            : Duration.zero,
                      );
                      _toggleControls(); // إعادة المؤقت
                    },
                  ),
                ),

                // زر التقديم 5 ثوانٍ
                Positioned(
                  right: 40,
                  child: IconButton(
                    icon: const Icon(
                      Icons.replay_5,
                      size: 40,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      final current = _localVideoController!.value.position;
                      final max = _localVideoController!.value.duration;
                      final newPosition = current + const Duration(seconds: 5);
                      _localVideoController!.seekTo(
                        newPosition < max ? newPosition : max,
                      );
                      _toggleControls(); // إعادة المؤقت
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProgressBar() {
    final Duration duration = _localVideoController!.value.duration;
    final Duration position = _localVideoController!.value.position;
    final Duration current =
        _isSeeking ? Duration(seconds: _seekValue.toInt()) : position;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.black26,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          children: <Widget>[
            Text(
              _formatDuration(current),
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
            Expanded(
              child: SliderTheme(
                data: const SliderThemeData(
                  thumbColor: Colors.white,
                  activeTrackColor: Colors.white,
                  inactiveTrackColor: Colors.white38,
                  trackHeight: 2.0,
                ),
                child: Slider(
                  min: 0.0,
                  max: duration.inSeconds.toDouble(),
                  value: current.inSeconds.toDouble().clamp(
                    0.0,
                    duration.inSeconds.toDouble(),
                  ),
                  onChangeStart: (_) {
                    setState(() => _isSeeking = true);
                  },
                  onChanged: (double value) {
                    setState(() => _seekValue = value);
                  },
                  onChangeEnd: (double value) {
                    _localVideoController!.seekTo(
                      Duration(seconds: value.toInt()),
                    );
                    setState(() => _isSeeking = false);
                  },
                ),
              ),
            ),
            Text(
              _formatDuration(duration),
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoInfo() {
    return Container(
      color: Palette.black,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                const Spacer(),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: <Widget>[
                AssetsManager.svg.graduationCap.svg(color: Palette.darkGray),
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
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final String minutes = twoDigits(duration.inMinutes.remainder(60));
    final String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
