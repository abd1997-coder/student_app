import 'package:flutter/material.dart';
import 'package:student_app/core/common/models/unit_model.dart';
import 'package:student_app/core/common/widget/appWidget/part_widget.dart';
import 'package:student_app/core/common/widget/bottomSheets/material_purchase_sheet_content.dart';
import 'package:student_app/core/common/widget/bottomSheets/purchase_sheet_content.dart';
import 'package:student_app/core/common/widget/bottomSheets/teachers_sheet_content.dart';
import 'package:student_app/core/common/widget/loading_widget.dart';
import 'package:student_app/core/common/widget/price_widget.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/core/pruches/bloc/pruches_bloc.dart';
import 'package:student_app/features/materials/bloc/material_bloc.dart';
import 'package:student_app/features/materials/data/model/material_model.dart';
import 'package:student_app/features/materials/presentation/widgets/material_detail_shimmer.dart';

@RoutePage()
class MaterialDetailScreen extends StatelessWidget {
  const MaterialDetailScreen({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MaterialDetailBloc>(
          create: (BuildContext context) => getIt<MaterialDetailBloc>(),
        ),
        BlocProvider<PruchesBloc>(
          create: (BuildContext context) => getIt<PruchesBloc>(),
        ),
      ],
      child: MaterialDetailView(id: id),
    );
  }
}

class MaterialDetailView extends StatefulWidget {
  const MaterialDetailView({super.key, required this.id});
  final String id;
  @override
  State<MaterialDetailView> createState() => _MaterialDetailViewState();
}

class _MaterialDetailViewState extends State<MaterialDetailView> {
  late MaterialDetailBloc materialBloc;
  late PruchesBloc pruchesBloc;

  @override
  void initState() {
    super.initState();
    pruchesBloc = context.read<PruchesBloc>();
    materialBloc = context.read<MaterialDetailBloc>();
    materialBloc.add(MaterialEvent.getMaterialByID(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: BlocConsumer<MaterialDetailBloc, MaterialDetailState>(
        bloc: materialBloc,
        listener: (BuildContext context, MaterialDetailState state) {},
        builder: (BuildContext context, MaterialDetailState state) {
          return state.maybeWhen(
            orElse: () {
              return Center(child: Text("$state"));
            },
            failedMaterial: (GeneralException? generalException) {
              return Center(
                child: GlobalErrorWidget(
                  generalException: generalException,
                  onPressed: () {
                    materialBloc.add(MaterialEvent.getMaterialByID(widget.id));
                  },
                ),
              );
            },
            loadingMaterial: () {
              return const MaterialDetailShimmer();
            },
            successMaterial: (MaterialResults? materialResults) {
              return SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: BlocConsumer<PruchesBloc, PruchesState>(
                  bloc: pruchesBloc,
                  listener: (BuildContext context, PruchesState state) {
                    state.maybeWhen(
                      orElse: () {},
                      buyingSucceed: () {
                        showSnackBar(
                          context: context,
                          message: "تمت العملية بنجاح",
                          isError: false,
                        );
                        materialBloc.add(
                          MaterialEvent.getMaterialByID(widget.id),
                        );
                      },
                      buyingFailed: (GeneralException? generalException) {
                        showSnackBar(
                          context: context,
                          message: generalException?.message,
                          isError: true,
                        );
                      },
                    );
                  },
                  builder: (BuildContext context, PruchesState state) {
                    return Stack(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetsManager.images.materialDetail
                                              .provider(),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          child: InkWell(
                                            onTap: () {
                                              context.router.maybePop();
                                            },
                                            child: Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 8,
                                                  ),
                                              alignment:
                                                  AlignmentDirectional
                                                      .centerStart,
                                              child:
                                                  AssetsManager.svg.arrowBack
                                                      .svg(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment:
                                              AlignmentDirectional.centerEnd,
                                          child: Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: GestureDetector(
                                              onTap: () {
                                                showMaterialPurchaseSheet(
                                                  context: context,
                                                  objectNmae: "الوحدة",
                                                  onClickBuy: () {
                                                    context.router.maybePop();
                                                    pruchesBloc.add(
                                                      PruchesEvent.buyMaterial(
                                                        materialResults?.id ??
                                                            "",
                                                        PruchesType.material,
                                                      ),
                                                    );
                                                  },
                                                  balance: "200",
                                                  cost:
                                                      materialResults?.price ??
                                                      "0.0",
                                                );
                                              },
                                              child:
                                                  (materialResults
                                                              ?.isAvailable ??
                                                          false)
                                                      ? const SizedBox()
                                                      : Container(
                                                        padding:
                                                            const EdgeInsets.all(
                                                              10,
                                                            ),
                                                        decoration: const BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                topRight:
                                                                    Radius.circular(
                                                                      32,
                                                                    ),
                                                                bottomRight:
                                                                    Radius.circular(
                                                                      32,
                                                                    ),
                                                              ),
                                                          boxShadow: <
                                                            BoxShadow
                                                          >[
                                                            BoxShadow(
                                                              color:
                                                                  Colors
                                                                      .black12,
                                                              blurRadius: 6,
                                                              offset: Offset(
                                                                0,
                                                                3,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        child: PriceWidget(
                                                          point:
                                                              "${materialResults?.price}",
                                                        ),
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Expanded(child: SizedBox()),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Palette.primary,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(12),
                                    child: Text(
                                      "${materialResults?.name}",
                                      style: const TextStyle(
                                        color: Palette.white,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      showTeachersSheet(context: context);
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          AssetsManager.svg.graduationCap.svg(
                                            color: Palette.primary,
                                            width: 20,
                                          ),
                                          const Text(
                                            "المدرسين",
                                            style: TextStyle(
                                              color: Palette.primary,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Row(
                                    children: [
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            AssetsManager.svg.unitIcon.svg(),
                                            Text(
                                              "${materialResults?.units?.length} وحدة ",
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            AssetsManager.svg.playerIcon.svg(),
                                            Text(
                                              "فيديو ${materialResults!.videoCount} ",
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),

                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                      vertical: 5,
                                    ),
                                    child: const Text(
                                      "سيتم في هذا الفيديو  شرح نظرة عامة عن المادة .",
                                      style: TextStyle(
                                        color: Palette.darkGray,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  ListView.builder(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 8,
                                    ),
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: materialResults.units?.length,
                                    itemBuilder: (
                                      BuildContext context,
                                      int index,
                                    ) {
                                      List<Unit> list =
                                          materialResults.units ?? [];

                                      return PartWidget(
                                        myLeason: false,
                                        unit: materialResults.units![index],
                                        pruchesBloc: pruchesBloc,
                                        onTogglePart: () {
                                          if (materialResults
                                                  .units![index]
                                                  .isAvailable ??
                                              false) {
                                            setState(() {
                                              list[index].isExpanded =
                                                  !list[index].isExpanded;
                                            });
                                          } else {
                                            showMaterialPurchaseSheet(
                                              context: context,
                                              objectNmae: "الوحدة",
                                              balance:
                                                  PrefData.getUserBalance() ??
                                                  '0',
                                              cost: list[index].price ?? "0",
                                              onClickBuy: () {
                                                context.router.maybePop();
                                                pruchesBloc.add(
                                                  PruchesEvent.buyMaterial(
                                                    list[index].id ?? '-1',
                                                    PruchesType.unit,
                                                  ),
                                                );
                                              },
                                            );
                                          }
                                        },
                                        onToggleChapter: (Unit value) {
                                          setState(() {
                                            value.isExpanded =
                                                !value.isExpanded;
                                          });
                                        },
                                        onToggleLesson: (Unit value) {
                                          if (value.isAvailable ?? false) {
                                            setState(() {
                                              value.isExpanded =
                                                  !value.isExpanded;
                                            });
                                          } else {
                                            showVideoPurchaseSheet(
                                              context: context,
                                              balance: 999,
                                              cost: value.price ?? "0",
                                              onClickBuy: () {
                                                context.router.maybePop();
                                                pruchesBloc.add(
                                                  PruchesEvent.buyMaterial(
                                                    list[index].id ?? '-1',
                                                    PruchesType.video,
                                                  ),
                                                );
                                              },
                                            );
                                          }
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        state.maybeWhen(
                          orElse: () {
                            return const SizedBox();
                          },
                          buyingLoading: () {
                            return Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Palette.white.withValues(alpha: 0.4),
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

/// Call this from any widget, passing in the user’s current balance and the cost.
