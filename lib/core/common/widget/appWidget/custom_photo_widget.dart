import 'package:flutter/material.dart';
import 'package:student_app/core/common/common.dart';
import 'package:student_app/core/managers/theme/palette.dart';
import 'package:student_app/features/home/data/model/home_model.dart';
import 'package:widgets_easier/widgets_easier.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomPhotoWidget extends StatelessWidget {
  const CustomPhotoWidget({
    super.key,
    this.hideName = false,
    this.size = 120,
    this.name,
    this.image,
  });
  final bool hideName;
  final double size;
  final String? image;
  final String? name;
  // 01dbb0b1-c9e8-4455-89c5-c62dfe9b9d9c
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerEnd,
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: const BorderRadiusDirectional.only(
              topEnd: Radius.circular(120),
              topStart: Radius.circular(120),
              bottomStart: Radius.circular(120),
            ),
            color: context.colorScheme.surface,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 5,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                  image ??
                      "https://sesupport.edumall.jp/hc/article_attachments/900009570963/noImage.jpg",
                ),
              ),
              borderRadius: const BorderRadiusDirectional.only(
                topEnd: Radius.circular(120),
                topStart: Radius.circular(120),
                bottomStart: Radius.circular(120),
              ),
              color: context.colorScheme.primary,
            ),
          ),
        ),
        (hideName == true)
            ? const SizedBox()
            : Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                width: size * 0.8,
                decoration: ShapeDecoration(
                  color: Palette.white,
                  shadows: const <BoxShadow>[
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(1.48, 4.44),
                      blurRadius: 5.92,
                    ),
                  ],
                  shape: DashedBorder(
                    color: context.colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(120),
                    ),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      name ?? '',
                      textAlign: TextAlign.center,
                      style: context.labelLarge?.copyWith(
                        color: context.colorScheme.primary,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
      ],
    );
  }
}
