import 'package:flutter/material.dart';
import 'package:student_app/core/common/models/unit_model.dart';
import 'package:student_app/core/common/widget/appWidget/part_widget.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/core/general/Materials/bloc/materials_bloc.dart';
import 'package:student_app/features/home/data/model/home_model.dart';
import 'package:student_app/features/leasons/bloc/leasons_bloc.dart';
import 'package:student_app/features/materials/data/model/material_model.dart';

@RoutePage()
class LeasonsScreen extends StatefulWidget {
  const LeasonsScreen({Key? key}) : super(key: key);

  @override
  _LeasonsScreenState createState() => _LeasonsScreenState();
}

class _LeasonsScreenState extends State<LeasonsScreen>
    with TickerProviderStateMixin {
  final List<String> _tabs = <String>['فيديوهات', 'مكتبات', 'ملفات'];
  String _selectedSubject = 'الكيمياء';

  late TabController tabController;
  int selectedTap = 0;
  LeasonsBloc leasonsBloc = getIt<LeasonsBloc>();
  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // return const Center(
    //   child: Text("Soong", style: TextStyle(color: Palette.primary)),
    // );
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

                    // Row(
                    //   children: <Widget>[
                    //     Expanded(
                    //       child: InkWell(
                    //         onTap: () {
                    //           tabController.animateTo(0);
                    //           selectedTap = 0;
                    //           setState(() {});
                    //         },
                    //         child: TapWidget(
                    //           title: "فيديوهات",
                    //           isSelected: selectedTap == 0,
                    //         ),
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: InkWell(
                    //         onTap: () {
                    //           tabController.animateTo(1);
                    //           selectedTap = 1;
                    //           setState(() {});
                    //         },
                    //         child: TapWidget(
                    //           title: "مكتبات",
                    //           isSelected: selectedTap == 1,
                    //         ),
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: InkWell(
                    //         onTap: () {
                    //           tabController.animateTo(2);
                    //           selectedTap = 2;
                    //           setState(() {});
                    //         },
                    //         child: TapWidget(
                    //           title: "ملفات",
                    //           isSelected: selectedTap == 2,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
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
            child: BlocConsumer<MaterialsBloc, MaterialsState>(
              bloc:
                  getIt<MaterialsBloc>()
                    ..add(const MaterialsEvent.fetchMaterials()),
              listener: (BuildContext context, MaterialsState state) {},
              builder: (BuildContext context, MaterialsState state) {
                return state.when(
                  initial: () => const SizedBox.shrink(),
                  loading:
                      () => const Center(child: CircularProgressIndicator()),
                  loaded:
                      (List<MaterialData> materials) => ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        scrollDirection: Axis.horizontal,
                        itemCount: materials.length,
                        separatorBuilder: (_, __) => const SizedBox(width: 8),
                        itemBuilder: (BuildContext context, int idx) {
                          return ChoiceChip(
                            label: Text(materials[idx].name ?? ''),
                            showCheckmark: false,
                            selected: _selectedSubject == materials[idx].name,
                            onSelected: (_) {
                              setState(() {
                                _selectedSubject = materials[idx].name ?? '';
                              });
                              leasonsBloc.add(
                                LeasonsEvent.fetchLeasonsByMaterialId(
                                  materials[idx].id ?? '',
                                ),
                              );
                            },
                            selectedColor: context.colorScheme.primary,
                            backgroundColor: Colors.white,
                            labelStyle: TextStyle(
                              color:
                                  _selectedSubject == materials[idx].name
                                      ? Colors.white
                                      : Colors.black87,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color:
                                    _selectedSubject == materials[idx].name
                                        ? Colors.transparent
                                        : Colors.grey.shade300,
                              ),
                            ),
                          );
                        },
                      ),

                  error: (String message) => Text(message),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: BlocBuilder<LeasonsBloc, LeasonsState>(
              bloc: leasonsBloc,
              builder: (BuildContext context, LeasonsState state) {
                return state.when(
                  initial: () => const SizedBox.shrink(),
                  loading:
                      () => const Center(child: CircularProgressIndicator()),
                  success:
                      (MaterialResults? materialResults) => ListView.builder(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        shrinkWrap: true,
                        itemCount: materialResults?.units?.length,
                        itemBuilder: (BuildContext context, int index) {
                          List<Unit> list = materialResults?.units ?? [];

                          return PartWidget(
                            myLeason: true,
                            unit: materialResults?.units![index],
                            pruchesBloc: null,
                            onTogglePart: () {
                              if (materialResults?.units![index].isAvailable ??
                                  false) {
                                setState(() {
                                  list[index].isExpanded =
                                      !list[index].isExpanded;
                                });
                              } else {}
                            },
                            onToggleChapter: (Unit value) {
                              setState(() {
                                value.isExpanded = !value.isExpanded;
                              });
                            },
                            onToggleLesson: (Unit value) {
                              if (value.isAvailable ?? false) {
                                setState(() {
                                  value.isExpanded = !value.isExpanded;
                                });
                              } else {}
                            },
                          );
                        },
                      ),
                  error:
                      (String message) => Center(
                        child: Text(
                          message,
                          style: const TextStyle(fontSize: 12),
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
