import 'package:flutter/material.dart';
import 'package:student_app/core/common/models/temp_class.dart';
import 'package:student_app/core/common/models/unit_model.dart';
import 'package:student_app/core/common/widget/appWidget/part_widget.dart';
import 'package:student_app/core/common/widget/appWidget/session_widget.dart';
import 'package:student_app/core/common/widget/bottomSheets/delete_item_sheet_content.dart';
import 'package:student_app/core/common/widget/tap_widget.dart';
import 'package:student_app/core/core.dart';

@RoutePage()
class DownloadedLeasonsScreen extends StatefulWidget {
  const DownloadedLeasonsScreen({super.key});

  @override
  _DownloadedLeasonsScreenState createState() =>
      _DownloadedLeasonsScreenState();
}

class _DownloadedLeasonsScreenState extends State<DownloadedLeasonsScreen>
    with TickerProviderStateMixin {
  final List<String> _subjects = <String>['الكيمياء', 'الفيزياء', 'علوم'];
  String _selectedSubject = 'الكيمياء';

  final List<String> _tabs = <String>['فيديوهات', 'مكثفات', 'Mp3', 'ملفات'];

  late TabController tabController;
  int selectedTap = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Header
            Container(
              width: double.infinity,
              height: 200,
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
                  image: AssetsManager.images.noInternetBackground.provider(),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    'في هذه القائمة ستجد الفيديوهات التعليمية التي قمت بتحميلها لمشاهدتها لاحقاً دون الحاجة للاتصال بالانترنت',
                    style: TextStyle(
                      color: Palette.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: List.generate(_tabs.length, (index) {
                      return Expanded(
                        child: InkWell(
                          onTap: () {
                            tabController.animateTo(index);
                            selectedTap = index;
                            setState(() {});
                          },
                          child: TapWidget(
                            title: _tabs[index],
                            isSelected: selectedTap == index,
                          ),
                        ),
                      );
                    }),
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
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Dismissible(
                    key: Key(""),
                    direction: DismissDirection.endToStart,
                    onDismissed: (_) {
                      deleteBottomSheet(context, "هل تريد حذف الفيديو!");
                    },
                    background: Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 24),
                      color: Colors.redAccent,
                      child: const Icon(Icons.delete, color: Colors.white),
                    ),
                    child: SessionWidget(
                      videoModel: null,
                    ),
                  ),
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
              unit:null,
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
