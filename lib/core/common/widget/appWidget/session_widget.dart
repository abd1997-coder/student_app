import 'package:flutter/material.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/common/widget/price_widget.dart';
import 'package:student_app/core/managers/theme/palette.dart';

class SessionWidget extends StatelessWidget {
  const SessionWidget({super.key, required this.videoModel});

  final VideoModel? videoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffEEEEEE),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            (videoModel?.canView ?? false)
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
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
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
                    videoModel?.title ?? "-",
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
                      const SizedBox(width: 10),
                      Text(
                        videoModel?.duration ?? "-",
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
            (videoModel?.canView ?? false)
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
                  onTap: () {},
                  child: PriceWidget(point: videoModel?.price ?? "0"),
                ),
          ],
        ),
      ),
    );
  }
}
