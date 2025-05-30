import 'package:flutter/material.dart';
import 'package:student_app/core/common/models/unit_model.dart';
import 'package:student_app/core/common/widget/appWidget/chapter_widget.dart';
import 'package:student_app/core/managers/theme/palette.dart';

class AchievementWidget extends StatelessWidget {
  const AchievementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Progress Section
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          margin: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Palette.primary.withOpacity(0.2),
            borderRadius: const BorderRadius.all(Radius.circular(18)),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('الإنجاز', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 1),
              LinearProgressIndicator(
                value: 0.6,
                color: Palette.primary,
                backgroundColor: Palette.white,
                minHeight: 8,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "4 فيديو",
                    style: TextStyle(color: Palette.primary, fontSize: 14),
                  ),
                  Text(
                    "6 فيديو",
                    style: TextStyle(color: Palette.primary, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Modules List
        const SizedBox(height: 12), // Spacing between sections
        Column(
          children: List.generate(1, (index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: ChapterWidget(
                pruchesBloc: null,
                // unit: Chapter(
                //   lessons: <Lesson>[],
                //   title: "النواس المرن",
                //   isExpanded: false,
                // ),
                unit: null,
                onToggleChapter: () {},
                onToggleLesson: (Unit value) {},
              ),
            );
          }),
        ),
      ],
    );
  }
}
