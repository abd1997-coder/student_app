import 'package:flutter/material.dart';
import 'package:student_app/core/common/widget/bottomSheets/quality_sheet_content.dart';
import 'package:student_app/core/common/widget/bottomSheets/sound_sheet_content.dart';
import 'package:student_app/core/common/widget/bottomSheets/speed_sheet_content.dart';
import 'package:student_app/core/core.dart';
import 'package:y_player/y_player.dart';

void showVideoSheet({required BuildContext context}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    showDragHandle: false,
    backgroundColor: Colors.transparent,
    builder: (_) => const VideoSettingsSheetContent(),
  );
}

class VideoSettingsSheetContent extends StatefulWidget {
  const VideoSettingsSheetContent({super.key});

  @override
  State<VideoSettingsSheetContent> createState() =>
      _VideoSettingsSheetContentState();
}

class _VideoSettingsSheetContentState extends State<VideoSettingsSheetContent> {
  bool withTests = false;
  int selectedTap = 1;
  List<QualityOption> qualities = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 300,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // --- title ---
                const SizedBox(height: 24),
                // quality
                InkWell(
                  onTap: () {
                    context.router.pop();
                    qualitySheet(
                      context: context,
                      qualities: qualities,
                      onQualitySelected: (quality) {
                        // Handle quality selection
                        setState(() {
                          // Update selected quality
                        });
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            AssetsManager.svg.qualityIcon.svg(width: 40),
                            const SizedBox(width: 10),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              child: const Text(
                                "الجودة ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "360 p ",
                        style: TextStyle(color: Palette.darkGray, fontSize: 14),
                      ),
                      const Icon(Icons.arrow_forward_ios, size: 12),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                // speed
                InkWell(
                  onTap: () {
                    context.router.pop();
                    speedSheet(context: context);
                  },

                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            AssetsManager.svg.speedIcon.svg(width: 40),
                            const SizedBox(width: 10),

                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              child: const Text(
                                "السرعة ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "عادية ",
                        style: TextStyle(color: Palette.darkGray, fontSize: 14),
                      ),
                      const Icon(Icons.arrow_forward_ios, size: 12),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                // quality
                InkWell(
                  onTap: () {
                    context.router.pop();
                    soundSheet(context: context);
                  },

                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            AssetsManager.svg.soundIcon.svg(width: 40),
                            const SizedBox(width: 10),

                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              child: const Text(
                                "مستوى الصوت ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "45 ",
                        style: TextStyle(color: Palette.darkGray, fontSize: 14),
                      ),
                      const Icon(Icons.arrow_forward_ios, size: 12),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
