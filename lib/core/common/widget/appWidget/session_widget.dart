import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/common/common.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/common/widget/bottomSheets/material_purchase_sheet_content.dart';
import 'package:student_app/core/common/widget/price_widget.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/core/managers/theme/palette.dart';
import 'package:student_app/core/pruches/bloc/pruches_bloc.dart';

class SessionWidget extends StatelessWidget {
  const SessionWidget({
    super.key,
    required this.video,
    required this.myLeason,
    required this.teacherName,
    required this.pruchesBloc,
  });

  final VideoModel video;
  final bool myLeason;
  final PruchesBloc? pruchesBloc;
  final String teacherName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (myLeason) {
          bool exists = await GlobalFunctions.doesVideoExistLocally(
            video.id ?? '',
          );
          if (exists) {
            context.router.push(
              LocalPlayerRoute(
                myLeason: myLeason,
                videoModel: video,
                teacherName: teacherName,
              ),
            );
          } else {
            showSnackBar(
              context: context,
              message: "هذا المقطع غير محمل ",
              isError: true,
            );
          }
        } else {
          if (video.canView ?? false) {
            context.router.push(
              PlayerRoute(
                myLeason: myLeason,
                videoModel: video,
                teacherName: teacherName,
              ),
            );
          }
        }
      },
      child: Card(
        color: const Color(0xffEEEEEE),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              (video.canView ?? false)
                  ? Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: const Icon(
                      Icons.play_circle,
                      color: Color(0xffBEBEBE),
                      size: 28,
                    ),
                  )
                  : Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Palette.primary.withValues(alpha: 0.4),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: const Icon(
                      Icons.lock,
                      color: Color(0xffffffff),
                      size: 20,
                    ),
                  ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      video.title ?? "-",
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time_filled,
                          size: 18,
                          color: Color(0xffBEBEBE),
                        ),
                        const SizedBox(width: 2),
                        Text(
                          GlobalFunctions.formatDurationString(
                            video.duration ?? "0:0",
                          ),
                          style: const TextStyle(
                            fontSize: 10,
                            color: Color(0xffBEBEBE),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              (video.canView ?? false)
                  ? Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text(
                      "تمت شراءه",
                      style: TextStyle(
                        color: Palette.darkGray,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                  : InkWell(
                    onTap: () {
                      showMaterialPurchaseSheet(
                        context: context,
                        balance: PrefData.getUserBalance() ?? '0',
                        objectNmae: "وحدة",
                        cost: video.price ?? "0",
                        onClickBuy: () {
                          context.router.maybePop();
                          pruchesBloc?.add(
                            PruchesEvent.buyMaterial(
                              video.id ?? '-1',
                              PruchesType.video,
                            ),
                          );
                        },
                      );
                    },
                    child: PriceWidget(point: video.price ?? "0"),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
