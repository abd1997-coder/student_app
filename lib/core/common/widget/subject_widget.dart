import 'package:flutter/material.dart';
import 'package:student_app/core/common/common.dart';
import 'package:student_app/core/managers/theme/palette.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SubjectWidget extends StatelessWidget {
  const SubjectWidget({
    super.key,
    required this.title,
    required this.videosCount,
    required this.image,
  });
  final String title;
  final int videosCount;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,

        children: [
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              height: 90,
              width: 170,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Palette.white,
                borderRadius: BorderRadius.circular(34),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 20),
                  Text(
                    title,
                    style: context.labelLarge?.copyWith(
                      fontSize: 16,
                      color: Palette.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.play_circle_fill, color: Colors.grey),
                      Text(
                        "$videosCount",
                        style: context.labelLarge?.copyWith(
                          fontSize: 12,
                          color: Palette.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          CircleAvatar(
            radius: 28,
            backgroundImage: CachedNetworkImageProvider(image),
          ),
        ],
      ),
    );
  }
}
