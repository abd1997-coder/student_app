import 'package:flutter/material.dart';
import 'package:student_app/core/common/models/temp_class.dart';
import 'package:student_app/core/common/models/unit_model.dart';
import 'package:student_app/core/common/widget/appWidget/part_widget.dart';
import 'package:student_app/core/common/widget/tap_widget.dart';
import 'package:student_app/core/core.dart';

@RoutePage()
class LeasonsScreen extends StatefulWidget {
  const LeasonsScreen({Key? key}) : super(key: key);

  @override
  _LeasonsScreenState createState() => _LeasonsScreenState();
}

class _LeasonsScreenState extends State<LeasonsScreen>
    with TickerProviderStateMixin {
  final List<String> _tabs = <String>['فيديوهات', 'مكتبات', 'ملفات'];
  final List<String> _subjects = <String>['الكيمياء', 'الفيزياء', 'علوم'];
  String _selectedSubject = 'الكيمياء';

  late TabController tabController;
  int selectedTap = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Soong", style: TextStyle(color: Palette.primary)),
    );
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Header
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Palette.primary.withValues(alpha: 0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetsManager.images.backgroundCard.provider(),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 25),
                    const Text(
                      'دروسي',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'هنا ستجد الفيديوهات التعليمية التي قمت بشرائها للوصول لها بسهولة',
                      style: TextStyle(
                        color: Palette.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              tabController.animateTo(0);
                              selectedTap = 0;
                              setState(() {});
                            },
                            child: TapWidget(
                              title: "فيديوهات",
                              isSelected: selectedTap == 0,
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              tabController.animateTo(1);
                              selectedTap = 1;
                              setState(() {});
                            },
                            child: TapWidget(
                              title: "مكتبات",
                              isSelected: selectedTap == 1,
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              tabController.animateTo(2);
                              selectedTap = 2;
                              setState(() {});
                            },
                            child: TapWidget(
                              title: "ملفات",
                              isSelected: selectedTap == 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Tab views
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children:
                      _tabs.map((String tab) {
                        if (tab == 'فيديوهات') {
                          return _buildVideosTab();
                        }
                        if (tab == 'فيديوهات') {
                          return _buildVideosTab();
                        } else {
                          return _buildVideosTab();
                        }
                      }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVideosTab() {
    return Container(
      color: Palette.white,
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Subject filters
          SizedBox(
            height: 40,
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
                          selected ? Colors.transparent : Colors.grey.shade300,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          // Subjects List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: parts.length,
              itemBuilder: (BuildContext context, int index) {
                return PartWidget(
                  pruchesBloc: null,
                  unit: null,
                  onTogglePart:
                      () => setState(() {
                        parts[index].isExpanded = !parts[index].isExpanded;
                      }),
                  onToggleChapter: (Unit value) {
                    setState(() {
                      value.isExpanded = !value.isExpanded;
                    });
                  },
                  onToggleLesson: (Unit value) {
                    setState(() {
                      value.isExpanded = !value.isExpanded;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PartsScreen extends StatefulWidget {
  const PartsScreen({Key? key}) : super(key: key);

  @override
  _PartsScreenState createState() => _PartsScreenState();
}

class _PartsScreenState extends State<PartsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: parts.length,
          itemBuilder: (BuildContext context, int index) {
            return PartWidget(
              unit: null,
              pruchesBloc: null,
              onTogglePart:
                  () => setState(() {
                    parts[index].isExpanded = !parts[index].isExpanded;
                  }),
              onToggleChapter:
                  (Unit chapter) => setState(() {
                    chapter.isExpanded = !chapter.isExpanded;
                  }),
              onToggleLesson:
                  (Unit lesson) => setState(() {
                    lesson.isExpanded = !lesson.isExpanded;
                  }),
            );
          },
        ),
      ),
    );
  }
}
