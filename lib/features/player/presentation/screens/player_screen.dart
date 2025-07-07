import 'package:flutter/material.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/common/widget/bottomSheets/download_sheet_content.dart';
import 'package:student_app/core/common/widget/bottomSheets/question_sheet_content.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/player/presentation/widgets/player_widget.dart';
import 'package:youtube_muxer_2025/youtube_muxer_2025.dart';
import 'package:video_player/video_player.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class PlayerScreen extends StatefulWidget {
  const PlayerScreen({
    super.key,
    required this.videoModel,
    required this.teacherName,
    required this.myLeason,
  });
  final VideoModel videoModel;
  final String teacherName;
  final bool myLeason;
  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final List<String> categories = <String>[
    'في هذه الوحدة أيضًا',
    'الأسئلة',
    'المرفقات',
    'الصور',
    'الملفات',
  ];

  int selectedCategory = 0;
  List<VideoQuality> _availableQualities = [];
  VideoPlayerController? _localVideoController;
  bool _isDecodedVideoReady = false;
  int? progressPercent;
  void _handleQualitiesReady(List<VideoQuality> qualities) {
    setState(() {
      _availableQualities = qualities;
    });
  }

  @override
  void dispose() {
    _localVideoController?.dispose();
    super.dispose();
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
                (widget.videoModel.videoUrl != null &&
                        widget.videoModel.videoUrl!.isNotEmpty)
                    ? PlayerWidget(
                      videourl: widget.videoModel.videoUrl!,
                      onQualitiesReady: _handleQualitiesReady,
                    )
                    : const Center(child: Text("هناك خطأ 357")),
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
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  questionSheet(context: context);
                                },
                                child: AssetsManager.svg.questionMarkIcon.svg(),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: AssetsManager.svg.saveIcon.svg(),
                              ),
                              InkWell(
                                onTap: () {
                                  downloadSheet(
                                    context: context,
                                    videoUrl: widget.videoModel.videoUrl!,
                                    videoId: widget.videoModel.id ?? "",
                                    onQualitySelected: (quality) {
                                      print(quality);
                                    },
                                    onStartDownload: (int value) {
                                      progressPercent = value;
                                      if (value == 100) {
                                        progressPercent = null;
                                      }
                                      setState(() {});
                                    },
                                  );
                                },
                                child:
                                    (progressPercent != null)
                                        ? donwloadProgressWidget(
                                          progressPercent!,
                                        )
                                        : AssetsManager.svg.downloadIcon.svg(),
                              ),
                            ],
                          ),
                        ),
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
                    Text(
                      widget.videoModel.description ?? "-",
                      style: const TextStyle(color: Palette.darkGray, fontSize: 15),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),

          // Decoded video section
          SliverToBoxAdapter(
            child: Column(
              children: [
                if (_isDecodedVideoReady && _localVideoController != null)
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AspectRatio(
                      aspectRatio: _localVideoController!.value.aspectRatio,
                      child: VideoPlayer(_localVideoController!),
                    ),
                  )
                else
                  const SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  donwloadProgressWidget(int progressPercent) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 30,
            height: 30,
            child: CircularProgressIndicator(
              value: progressPercent / 100, // النسبة تكون من 0.0 إلى 1.0
              strokeWidth: 6,
              backgroundColor: Colors.grey.shade300,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
          Text(
            '${progressPercent.toInt()}%',
            style: const TextStyle(fontWeight: FontWeight.normal ,fontSize: 9),
          ),
        ],
      ),
    );
  }
}
