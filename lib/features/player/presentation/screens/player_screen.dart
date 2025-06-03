import 'package:flutter/material.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/common/widget/bottomSheets/download_sheet_content.dart';
import 'package:student_app/core/common/widget/bottomSheets/question_sheet_content.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/player/presentation/widgets/player_widget.dart';
import 'package:y_player/y_player.dart';
import 'package:youtube_muxer_2025/youtube_muxer_2025.dart';

@RoutePage()
class PlayerScreen extends StatefulWidget {
  const PlayerScreen({
    super.key,
    required this.videoModel,
    required this.teacherName,
  });
  final VideoModel videoModel;
  final String teacherName;
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

  void _handleQualitiesReady(List<VideoQuality> qualities) {
    setState(() {
      _availableQualities = qualities;
    });
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

          // Header content below video
          SliverToBoxAdapter(
            child: Container(
              color: Palette.black, // الخلفية العامة خلف المحتوى الأبيض
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
                    // Action icons row
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
                                    onQualitySelected: (quality) {
                                      print(quality);
                                    },
                                  );
                                },
                                child: AssetsManager.svg.downloadIcon.svg(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Title & Teacher Info
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
                    // Description
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

          // Categories horizontal list
          // SliverToBoxAdapter(
          //   child: Container(
          //     margin: const EdgeInsets.symmetric(horizontal: 8),
          //     decoration: const BoxDecoration(
          //       color: Palette.gray,
          //       borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(12),
          //         topRight: Radius.circular(12),
          //       ),
          //     ),
          //     height: 60,
          //     child: ListView.separated(
          //       padding: const EdgeInsets.symmetric(horizontal: 16),
          //       scrollDirection: Axis.horizontal,
          //       itemCount: categories.length,
          //       separatorBuilder: (_, __) => const SizedBox(width: 8),
          //       itemBuilder: (BuildContext context, int index) {
          //         final bool selected = index == selectedCategory;
          //         return ChoiceChip(
          //           label: Text(
          //             categories[index],
          //             style: const TextStyle(fontWeight: FontWeight.bold),
          //           ),

          //           selected: selected,
          //           onSelected: (_) {
          //             setState(() => selectedCategory = index);
          //           },
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(20),
          //           ),
          //           selectedColor: Palette.primary,
          //           backgroundColor: Colors.grey.shade200,
          //           showCheckmark: false,
          //           labelStyle: TextStyle(
          //             color: selected ? Colors.white : Colors.grey[800],
          //           ),
          //         );
          //       },
          //     ),
          //   ),
          // ),

          // Progress bar or other content
          // const SliverToBoxAdapter(child: AutomationWidget()),
          // const SliverToBoxAdapter(child: SizedBox(height: 24)),
        ],
      ),
    );
  }
}
