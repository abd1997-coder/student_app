import 'package:flutter/material.dart';
import 'package:student_app/core/common/widget/appWidget/custom_photo_widget.dart';
import 'package:student_app/core/common/widget/tap_widget.dart';
import 'package:student_app/core/core.dart';

@RoutePage()
class TeachersScreen extends StatefulWidget {
  const TeachersScreen({super.key});

  @override
  State<TeachersScreen> createState() => _TeachersScreenState();
}

class _TeachersScreenState extends State<TeachersScreen>
    with TickerProviderStateMixin {
  final List<String> _tabs = <String>['فيديوهات', 'مكتبات'];

  late TabController tabController;
  int selectedTap = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 2, vsync: this);
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetsManager.images.backgroundCard.provider(),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 25),
                  const Text(
                    'المدرسين',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'هنا تجد الكادر  كله لكل المواد',
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
                            title: "كادر المتابعة",
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
                            title: "كادر المنصة",
                            isSelected: selectedTap == 1,
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
                      if (tab == 'كادر المتابعة') {
                        return _buildTeachersTab();
                      } else {
                        return _buildTeachersTab();
                      }
                    }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeachersTab() {
    return InkWell(
      onTap: () {
        context.router.push(const TeacherDetailRoute());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: GridView.builder(
          // Number of items
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 8,
          // Grid configuration:
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // two columns
            crossAxisSpacing: 20, // horizontal gap
            mainAxisSpacing: 12, // vertical gap
            childAspectRatio: 1, // width : height ratio
          ),
          itemBuilder: (context, index) {
            return const CustomPhotoWidget(size: 150);
          },
        ),
      ),
    );
  }
}
