import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/common/common.dart';
import 'package:student_app/core/common/models/unit_model.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/common/widget/appWidget/session_widget.dart';
import 'package:student_app/core/common/widget/bottomSheets/material_purchase_sheet_content.dart';
import 'package:student_app/core/common/widget/price_widget.dart'
    show PriceWidget;
import 'package:student_app/core/core.dart';
import 'package:student_app/core/managers/theme/palette.dart';
import 'package:student_app/core/pruches/bloc/pruches_bloc.dart';

class ChapterWidget extends StatelessWidget {
  final Unit? unit;
  final VoidCallback onToggleChapter;
  final ValueChanged<Unit> onToggleLesson;
  final PruchesBloc? pruchesBloc;
  final bool myLeason;
  const ChapterWidget({
    super.key,
    required this.unit,
    required this.onToggleChapter,
    required this.onToggleLesson,
    this.pruchesBloc,
    this.myLeason = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          margin: const EdgeInsets.only(bottom: 8),
          color: const Color(0xffE0C7FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: InkWell(
            onTap: onToggleChapter,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          unit?.name ?? "",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Row(
                          children: [
                            const Icon(
                              Icons.play_circle_rounded,
                              color: Palette.white,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${unit!.videos?.length}',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ((GlobalFunctions.hasUnviewableVideo(unit!)))
                      ? InkWell(
                        onTap: () {
                          showMaterialPurchaseSheet(
                            context: context,
                            objectNmae: "الوحدة",
                            balance: 
                              PrefData.getUserBalance() ?? '0',
                            
                            cost: unit?.price ?? "*",
                            onClickBuy: () {
                              context.router.maybePop();
                              pruchesBloc!.add(
                                PruchesEvent.buyMaterial(
                                  unit?.id ?? '---',
                                  PruchesType.unit,
                                ),
                              );
                            },
                          );
                        },
                        child: PriceWidget(point: "${unit?.price}"),
                      )
                      : const SizedBox(),

                  Icon(
                    unit!.isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (unit!.isExpanded)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            margin: const EdgeInsets.only(bottom: 12),
            child: Column(
              children:
                  (unit?.videos ?? [])
                      .map(
                        (VideoModel video) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 2,
                                height: 12,
                                color: Colors.grey,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                              ),
                              SessionWidget(
                                video: video,
                                teacherName:
                                    unit?.teachers?.first.user?.fullName ?? "",
                                myLeason: myLeason,
                                pruchesBloc: pruchesBloc,
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
      ],
    );
  }
}
