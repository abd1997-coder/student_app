import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:y_player/y_player.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({
    super.key,
    required this.videourl,
    required this.onQualitiesReady,
  });
  final String videourl;
  final Function(List<QualityOption> qualities) onQualitiesReady;
  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  YPlayerController? controller;
  bool hasInternet = true;
  bool isInitialized = false;
  bool playerFailed = false;
  List<QualityOption> availableQualities = [];

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

    try {
      final qualities = controller?.getAvailableQualities() ?? [];
      setState(() {
        availableQualities = qualities;
      });
      print('Available video qualities:');
      for (var quality in qualities) {
        print('Quality: ${quality.height}p - URL: ${quality.url}');
      }

      if (qualities.isNotEmpty) {
        await controller?.setQuality(qualities.last.height);
      }
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
