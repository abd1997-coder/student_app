import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:y_player/y_player.dart';
import 'package:youtube_muxer_2025/youtube_muxer_2025.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({
    super.key,
    required this.videourl,
    required this.onQualitiesReady,
  });
  final String videourl;
  final Function(List<VideoQuality> qualities) onQualitiesReady;
  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  YPlayerController? controller;
  bool hasInternet = true;
  bool isInitialized = false;
  bool playerFailed = false;
  List<VideoQuality> availableQualities = [];

  @override
  void initState() {
    super.initState();
    checkConnectivityAndInit();
  }

  Future<void> checkConnectivityAndInit() async {
    final result = await Connectivity().checkConnectivity();
    setState(() {
      hasInternet = result != ConnectivityResult.none;
      playerFailed = false;
      isInitialized = result != ConnectivityResult.none;
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!hasInternet || playerFailed) {
      return playerErrorWidget();
    }

    if (!isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }
    return YPlayer(
      youtubeUrl: widget.videourl,
      autoPlay: true,
      onControllerReady: handleController,
      chooseBestQuality: false,
      onStateChanged: (YPlayerStatus status) {},
      errorWidget: playerErrorWidget(),
      aspectRatio: 3 / 9,
    );
  }

  Widget playerErrorWidget() {
    final errorText =
        !hasInternet ? "لا يوجد اتصال بالإنترنت" : "فشل في تشغيل الفيديو";

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
          IconButton(
            onPressed: () async {
              await checkConnectivityAndInit();
            },
            icon: const Icon(Icons.refresh, color: Colors.white),
          ),
        ],
      ),
    );
  }

  void handleController(YPlayerController value) async {
    controller = value;
    YoutubeDownloader downloader = YoutubeDownloader();
    List<VideoQuality> qualities = await downloader.getQualities(
      widget.videourl,
    );
    try {
      setState(() {
        availableQualities = qualities;
      });

      // if (availableQualities.isNotEmpty) {
      //   await controller?.setQuality(144);
      // }
      widget.onQualitiesReady(qualities);
      controller?.play();
    } catch (e) {
      print('Controller error: $e');
      setState(() {
        playerFailed = true;
      });
    }

    setState(() {});
  }
}
