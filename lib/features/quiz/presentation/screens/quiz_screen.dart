import 'package:flutter/material.dart';
import 'package:student_app/core/common/models/temp_class.dart';
import 'package:student_app/core/common/widget/appWidget/part_widget.dart';
import 'package:student_app/core/common/widget/bottomSheets/test_filter_sheet_content.dart';
import 'package:student_app/core/common/widget/bottomSheets/test_type_sheet_content.dart';
import 'package:student_app/core/core.dart';

@RoutePage()
class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Topic> topics = <Topic>[
    Topic("الميكانيك", "م. مهند بكر", "3/22", "منجز", "assets/person1.png"),
    Topic(
      "الكهرباء والمغناطيس",
      "م. مهند بكر",
      "22",
      "منجز",
      "assets/person2.png",
    ),
    Topic("الكترونيات", "م. مهند بكر", "3/22", "منجز", "assets/person3.png"),
    Topic("الكترونيات", "م. مهند بكر", "22", "منجز", "assets/person2.png"),
  ];

  final List<String> _subjects = <String>['الكيمياء', 'الفيزياء', 'علوم'];
  String _selectedSubject = 'الكيمياء';

  @override
  Widget build(BuildContext context) {
        return const Center(
      child: Text("Soong", style: TextStyle(color: Palette.primary)),
    );
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,

        body: SafeArea(
          child: Column(
            children: <Widget>[
              // Header
              Container(
                height: 120,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetsManager.images.backgroundCard.provider(),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        testTypeBottomSheet(context);
                      },
                      child: AssetsManager.svg.testIcon.svg(),
                    ),
                    const Text(
                      "الاختبارات",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.router.push(const LeaderBoardRoute());
                      },
                      child: AssetsManager.svg.medalIcon.svg(),
                    ),
                  ],
                ),
              ),

              // Tabs
              Container(
                height: 40,
                margin: const EdgeInsets.symmetric(vertical: 8),
                color: Palette.gray,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: _subjects.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 8),
                  itemBuilder: (BuildContext context, int idx) {
                    final String subj = _subjects[idx];
                    final bool selected = subj == _selectedSubject;
                    return ChoiceChip(
                      label: Text(subj),
                      showCheckmark: false,
                      selected: selected,
                      onSelected: (_) {
                        setState(() {
                          _selectedSubject = subj;
                        });
                      },
                      selectedColor: context.colorScheme.primary,
                      backgroundColor: Colors.white,
                      labelStyle: TextStyle(
                        color: selected ? Colors.white : Colors.black87,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color:
                              selected
                                  ? Colors.transparent
                                  : Colors.grey.shade300,
                        ),
                      ),
                    );
                  },
                ),
              ),

              // Results Summary
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                margin: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetsManager.images.testBackground.provider(),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "نتائج اختباراتي",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "أتممت 9 من 100 اختبار",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.emoji_events, color: Colors.white, size: 40),
                  ],
                ),
              ),

              // Topics List
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: topics.length,
                  itemBuilder: (BuildContext context, int index) {
                    return PartWidget(
                      cardColor: Palette.gray,
                      fontColor: Palette.black,
                      unit: null,
                      onTogglePart: () {},
                      onToggleChapter: (c) {},
                      onToggleLesson: (c) {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Palette.primary,
          onPressed: () {
            testFilterBottomSheet(context);
          },
          child: const Icon(Icons.tune, color: Palette.white),
        ),
      ),
    );
  }
}

class Topic {
  final String title;
  final String teacher;
  final String tests;
  final String status;
  final String imagePath;

  Topic(this.title, this.teacher, this.tests, this.status, this.imagePath);
}
