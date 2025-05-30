import 'package:flutter/material.dart';
import 'package:student_app/core/common/models/unit_model.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/common/widget/appWidget/chapter_widget.dart';
import 'package:student_app/core/common/widget/appWidget/session_widget.dart';
import 'package:student_app/core/common/widget/appWidget/custom_photo_widget.dart';
import 'package:student_app/core/common/widget/bottomSheets/material_purchase_sheet_content.dart';
import 'package:student_app/core/common/widget/price_widget.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/core/pruches/bloc/pruches_bloc.dart';

class PartWidget extends StatelessWidget {
  final Unit? unit;
  final VoidCallback onTogglePart;
  final ValueChanged<Unit> onToggleChapter;
  final ValueChanged<Unit> onToggleLesson;
  final Color cardColor;
  final Color fontColor;
  final bool isPaid;
  final PruchesBloc? pruchesBloc;
  const PartWidget({
    super.key,
    required this.unit,
    required this.onTogglePart,
    required this.onToggleChapter,
    required this.onToggleLesson,
    this.cardColor = Palette.primary,
    this.fontColor = Palette.white,
    this.isPaid = false,
    this.pruchesBloc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      child: Column(
        children: <Widget>[
          Card(
            margin: const EdgeInsets.only(bottom: 12),
            color: cardColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            elevation: 2,
            child: InkWell(
              onTap: onTogglePart,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 14,
                ),
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 8),
                     CustomPhotoWidget(hideName: true, size: 80 ,image: unit?.image,),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            unit?.name ?? "-",
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              color: fontColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: <Widget>[
                              AssetsManager.svg.graduationCap.svg(
                                color: fontColor,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                "Teacher",
                                style: Theme.of(context).textTheme.bodySmall!
                                    .copyWith(color: fontColor),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          (unit?.units!.isEmpty ?? true)
                              ? const SizedBox()
                              : Row(
                                children: <Widget>[
                                  const Icon(
                                    Icons.play_circle_filled,
                                    size: 15,
                                    color: Palette.white,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    unit?.units?.length.toString() ?? '',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: fontColor),
                                  ),
                                ],
                              ),
                        ],
                      ),
                    ),
                    (GlobalFunctions.hasUnviewableVideo(unit!))
                        ? InkWell(
                          onTap: () {
                            showMaterialPurchaseSheet(
                              context: context,
                              objectNmae: "الوحدة",
                              balance: 999,
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
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            child: PriceWidget(point: "${unit?.price}"),
                          ),
                        )
                        : Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Palette.white.withValues(alpha: 0.6),
                          ),
                          child: Text(
                            "تم الشراء ",
                            style: TextStyle(fontSize: 14, color: fontColor),
                          ),
                        ),
                    Visibility(
                      visible: (unit?.isAvailable ?? false),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.6),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Icon(
                          unit!.isExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Palette.primary,
                          weight: 4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (unit!.isExpanded &&
              (unit!.videos!.isNotEmpty || unit!.units!.isNotEmpty))
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                border: Border(
                  left: BorderSide(color: Colors.grey, width: 1),
                  right: BorderSide(color: Colors.grey, width: 1),
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ), // Same color as left & right
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              child: Column(
                children: [
                  Column(
                    children:
                        (unit?.videos ?? [])
                            .map(
                              (VideoModel video) => InkWell(
                                onTap: () {
                                  if (video.canView ?? false) {
                                    context.router.push(
                                      PlayerRoute(
                                        videoModel: video,
                                        teacherName:
                                            unit
                                                ?.teachers
                                                ?.first
                                                .user
                                                ?.fullName ??
                                            "",
                                      ),
                                    );
                                  } else {
                                    showMaterialPurchaseSheet(
                                      context: context,
                                      balance: 999,
                                      cost: video.price ?? "",
                                      objectNmae: "الدرس",
                                      onClickBuy: () {
                                        context.router.maybePop();
                                        pruchesBloc!.add(
                                          PruchesEvent.buyMaterial(
                                            video.id ?? '-1',
                                            PruchesType.video,
                                          ),
                                        );
                                      },
                                    );
                                  }
                                },
                                child: SessionWidget(videoModel: video),
                              ),
                            )
                            .toList(),
                  ),
                  Column(
                    children:
                        (unit?.units ?? [])
                            .map(
                              (Unit unit) => ChapterWidget(
                                pruchesBloc: pruchesBloc,
                                unit: unit,
                                onToggleChapter: () => onToggleChapter(unit),
                                onToggleLesson:
                                    (Unit lesson) => onToggleLesson(lesson),
                              ),
                            )
                            .toList(),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
