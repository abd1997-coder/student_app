import 'package:flutter/material.dart';
import 'package:student_app/core/managers/theme/palette.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'dart:async'; // Required for Timer
import 'package:flutter/services.dart'; // Required for SystemChrome

class PlayerWidgetTow extends StatefulWidget {
  const PlayerWidgetTow({super.key, required this.videourl});
  final String videourl;

  @override
  State<PlayerWidgetTow> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidgetTow> {
  String status = "";
  double progress = 0.0;
  VideoPlayerController? _videoController;
  bool _controllerInitialized = false;
  bool _showControls = true;
  Timer? _hideControlsTimer;
  String? _seekIndicatorText;
  Timer? _seekIndicatorTimer;
  bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    streamVideoDirectly(widget.videourl);
  }

  // Listener for video playback updates (progress, buffering, etc.)
  void _videoListener() {
    if (_videoController == null || !_videoController!.value.isInitialized)
      return;

    setState(() {
      progress =
          _videoController!.value.position.inMilliseconds /
          _videoController!.value.duration.inMilliseconds;
      // You could also update buffering status here if needed
    });
  }

  // Function to stream video directly from YouTube
  Future<void> streamVideoDirectly(String url) async {
    setState(() {
      // status = "جارٍ تحليل الرابط للتشغيل المباشر...";
      progress = 0;
      print(status);
    });

    final YoutubeExplode yt = YoutubeExplode();

    try {
      Video video = await yt.videos.get(url);
      StreamManifest manifest = await yt.videos.streamsClient.getManifest(
        video.id,
        ytClients: <YoutubeApiClient>[
          YoutubeApiClient.safari,
          YoutubeApiClient.androidVr,
        ],
      );
      // Get the highest quality muxed stream (audio + video)
      MuxedStreamInfo streamInfo = manifest.muxed.withHighestBitrate();
      String streamUrl = streamInfo.url.toString();

      // Dispose of the old controller and remove its listener if it exists
      _videoController?.removeListener(_videoListener);
      _videoController?.dispose();

      // Initialize the new video controller with the stream URL
      _videoController = VideoPlayerController.network(streamUrl);
      _videoController!.addListener(_videoListener); // Add the listener

      await _videoController!.initialize();
      await _videoController!.setLooping(
        false,
      ); // Set to true if you want the video to loop
      await _videoController!.play();

      setState(() {
        _controllerInitialized = true; // Mark as initialized
        // status = "التشغيل من الإنترنت جاري";
        print(status);
      });
      _startHideControlsTimer(); // Start timer to auto-hide controls
    } catch (e) {
      setState(() {
        // status = "حدث خطأ أثناء التشغيل المباشر: $e";
        print(status);
      });
    } finally {
      yt.close(); // Close YoutubeExplode client
    }
  }

  // Toggles video playback (play/pause)
  void _togglePlayPause() {
    if (_videoController == null || !_videoController!.value.isInitialized)
      return;

    setState(() {
      _videoController!.value.isPlaying
          ? _videoController!.pause()
          : _videoController!.play();
      _startHideControlsTimer(); // Reset timer on interaction
    });
  }

  // Handles double-tap seeking (+5s or -5s)
  void _seekByDoubleTap(Offset localPosition) {
    if (_videoController == null || !_videoController!.value.isInitialized)
      return;

    final double screenWidth = MediaQuery.of(context).size.width;
    final Duration currentPosition = _videoController!.value.position;
    Duration newPosition;
    String indicatorText;

    if (localPosition.dx < screenWidth / 2) {
      // Double tapped on the left half (seek backward)
      newPosition = currentPosition + const Duration(seconds: 10);
      indicatorText = "+10s";
    } else {
      // Double tapped on the right half (seek forward)
      newPosition = currentPosition - const Duration(seconds: 10);
      indicatorText = "-10s";
    }

    // Clamp the new position within video bounds (0 to duration)
    if (newPosition < Duration.zero) {
      newPosition = Duration.zero;
    } else if (newPosition > _videoController!.value.duration) {
      newPosition = _videoController!.value.duration;
    }

    _videoController!.seekTo(newPosition);
    _videoController!.play(); // Ensure playback resumes after seeking

    setState(() {
      _seekIndicatorText = indicatorText;
    });

    // Hide the seek indicator after a short delay
    _seekIndicatorTimer?.cancel(); // Cancel any existing timer
    _seekIndicatorTimer = Timer(const Duration(milliseconds: 700), () {
      if (mounted) {
        // Check if the widget is still in the tree
        setState(() {
          _seekIndicatorText = null;
        });
      }
    });

    _startHideControlsTimer(); // Reset controls hide timer
  }

  // Starts or resets the timer to hide controls after inactivity
  void _startHideControlsTimer() {
    _hideControlsTimer?.cancel(); // Cancel any existing timer
    _hideControlsTimer = Timer(const Duration(seconds: 3), () {
      if (mounted) {
        // Check if the widget is still in the tree
        setState(() {
          _showControls = false;
        });
      }
    });
  }

  // Toggles the visibility of custom controls on single tap
  void _toggleControlsVisibility() {
    setState(() {
      _showControls = !_showControls;
    });
    if (_showControls) {
      _startHideControlsTimer(); // Start timer if controls are shown
    } else {
      _hideControlsTimer?.cancel(); // Cancel timer if controls are hidden
    }
  }

  // Toggles fullscreen mode
  Future<void> _toggleFullScreen() async {
    if (_isFullScreen) {
      // الخروج من ملء الشاشة (غير مستخدم هنا لأنك تفتح صفحة جديدة بدلاً من ذلك)
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    } else {
      // ✅ فتح صفحة ملء الشاشة
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => FullScreenPlayerPage(controller: _videoController!),
        ),
      );

      // ✅ بعد العودة من ملء الشاشة: إعادة الإعدادات الأصلية
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);

      // ✅ إعادة إظهار العناصر بعد الرجوع
      setState(() {
        _showControls = true;
      });
      _startHideControlsTimer();
    }
  }

  @override
  void dispose() {
    // Clean up controllers and timers
    _videoController?.removeListener(_videoListener);
    _videoController?.dispose();
    _hideControlsTimer?.cancel();
    _seekIndicatorTimer?.cancel();

    // Reset system UI and orientation preferences when widget is disposed
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controllerInitialized &&
            _videoController != null &&
            _videoController!.value.isInitialized
        ? Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            GestureDetector(
              onTap: _toggleControlsVisibility,
              onDoubleTapDown:
                  (details) => _seekByDoubleTap(details.localPosition),
              child: SizedBox.expand(
                // Ensures video takes full available space, especially in fullscreen
                child: FittedBox(
                  fit:
                      BoxFit
                          .cover, // Ensures video fills the screen without letterboxing
                  child: SizedBox(
                    width: _videoController!.value.size.width,
                    height: _videoController!.value.size.height,
                    child: VideoPlayer(_videoController!),
                  ),
                ),
              ),
            ),
            // Custom Controls Overlay (Conditional visibility based on _showControls)
            if (_showControls)
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.black.withOpacity(0.4),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          _videoController!.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: _togglePlayPause,
                      ),
                      Expanded(
                        child: Slider(
                          value:
                              _videoController!.value.position.inMilliseconds /
                              _videoController!.value.duration.inMilliseconds,
                          min: 0.0,
                          max: 1.0,
                          onChanged: (newValue) {
                            final newPosition = Duration(
                              milliseconds:
                                  (newValue *
                                          _videoController!
                                              .value
                                              .duration
                                              .inMilliseconds)
                                      .toInt(),
                            );
                            _videoController!.seekTo(newPosition);
                          },
                          onChangeEnd: (_) => _startHideControlsTimer(),
                          activeColor: Palette.primary,
                          inactiveColor: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          '${_printDuration(_videoController!.value.position)} / ${_printDuration(_videoController!.value.duration)}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          _isFullScreen
                              ? Icons.fullscreen_exit
                              : Icons.fullscreen,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: _toggleFullScreen,
                      ),
                    ],
                  ),
                ),
              ),
            // Seek Indicator Text Overlay (Conditional visibility)
            if (_seekIndicatorText != null)
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    _seekIndicatorText!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        )
        : SizedBox(
          // Loading state (when video is not yet initialized)
          height: 200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(color: Palette.primary),
                const SizedBox(height: 16),
                Text(
                  status,
                  style: const TextStyle(
                    color: Colors.white,
                  ), // Adjust color as per your app's theme
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
  }

  // Helper function to format Duration to a readable string (HH:MM:SS)
  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
}

//  full screen

class FullScreenPlayerPage extends StatefulWidget {
  final VideoPlayerController controller;

  const FullScreenPlayerPage({super.key, required this.controller});

  @override
  State<FullScreenPlayerPage> createState() => _FullScreenPlayerPageState();
}

class _FullScreenPlayerPageState extends State<FullScreenPlayerPage> {
  late VideoPlayerController _videoController;
  bool _showControls = true;
  Timer? _hideControlsTimer;
  String? _seekIndicatorText;
  Timer? _seekIndicatorTimer;

  @override
  void initState() {
    super.initState();
    _videoController = widget.controller;

    // Ensure the video is playing and start the controls hide timer
    if (!_videoController.value.isPlaying) {
      _videoController.play();
    }
    _startHideControlsTimer();

    // Set immersive mode and landscape orientation when entering fullscreen
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  // Listener for video playback updates (progress, buffering, etc.) - same as before

  void _togglePlayPause() {
    if (!_videoController.value.isInitialized) return;

    setState(() {
      _videoController.value.isPlaying
          ? _videoController.pause()
          : _videoController.play();
      _startHideControlsTimer();
    });
  }

  void _seekByDoubleTap(Offset localPosition) {
    if (!_videoController.value.isInitialized) return;

    final double screenWidth = MediaQuery.of(context).size.width;
    final Duration currentPosition = _videoController.value.position;
    Duration newPosition;
    String indicatorText;

    if (localPosition.dx < screenWidth / 2) {
      newPosition = currentPosition - const Duration(seconds: 10);
      indicatorText = "-10s";
    } else {
      newPosition = currentPosition + const Duration(seconds: 10);
      indicatorText = "+10s";
    }

    if (newPosition < Duration.zero) {
      newPosition = Duration.zero;
    } else if (newPosition > _videoController.value.duration) {
      newPosition = _videoController.value.duration;
    }

    _videoController.seekTo(newPosition);
    _videoController.play();

    setState(() {
      _seekIndicatorText = indicatorText;
    });

    _seekIndicatorTimer?.cancel();
    _seekIndicatorTimer = Timer(const Duration(milliseconds: 700), () {
      if (mounted) {
        setState(() {
          _seekIndicatorText = null;
        });
      }
    });

    _startHideControlsTimer();
  }

  void _startHideControlsTimer() {
    _hideControlsTimer?.cancel();
    _hideControlsTimer = Timer(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _showControls = false;
        });
      }
    });
  }

  void _toggleControlsVisibility() {
    setState(() {
      _showControls = !_showControls;
    });
    if (_showControls) {
      _startHideControlsTimer();
    } else {
      _hideControlsTimer?.cancel();
    }
  }

  // Method to exit fullscreen
  void _exitFullScreen() {
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _hideControlsTimer?.cancel();
    _seekIndicatorTimer?.cancel();

    // Reset system UI and orientation preferences when this fullscreen page is popped
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    ); // Restore system bars
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    // IMPORTANT: Do NOT dispose the videoController here, as it's passed from the parent widget.
    // The parent widget (PlayerWidgetTow) is responsible for disposing it.

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fullscreen background
      body: GestureDetector(
        onTap: _toggleControlsVisibility,
        onDoubleTapDown: (details) => _seekByDoubleTap(details.localPosition),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Video Player
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _videoController.value.size.width,
                  height: _videoController.value.size.height,
                  child: VideoPlayer(_videoController),
                ),
              ),
            ),
            // Controls Overlay
            if (_showControls)
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            _videoController.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: _togglePlayPause,
                        ),
                        Expanded(
                          child: Slider(
                            value:
                                _videoController.value.position.inMilliseconds /
                                _videoController.value.duration.inMilliseconds,
                            min: 0.0,
                            max: 1.0,
                            onChanged: (newValue) {
                              setState(() {
                                // No need for _sliderValue here as the Slider directly updates
                                // its value based on _videoController.value.position
                              });
                              final newPosition = Duration(
                                milliseconds:
                                    (newValue *
                                            _videoController
                                                .value
                                                .duration
                                                .inMilliseconds)
                                        .toInt(),
                              );
                              _videoController.seekTo(newPosition);
                            },
                            onChangeEnd: (newValue) {
                              _startHideControlsTimer();
                            },
                            activeColor: Palette.primary,
                            inactiveColor: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            '${_printDuration(_videoController.value.position)} / ${_printDuration(_videoController.value.duration)}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        // Fullscreen Exit Button
                        IconButton(
                          icon: const Icon(
                            Icons.fullscreen_exit,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: _exitFullScreen, // Call exit method
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            // Seek Indicator Text Overlay
            if (_seekIndicatorText != null)
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    _seekIndicatorText!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
}
