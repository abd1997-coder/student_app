import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TextLoadingWidget extends StatelessWidget {
  const TextLoadingWidget({
    super.key,
    required this.fontSize,
    required this.charsNumber,
    this.width = 100,
  });
  final double fontSize;
  final int charsNumber;
  final double width;

  @override
  Widget build(BuildContext context) {
    String text = "";
    for (int i = 0; i < charsNumber; i++) {
      text += "*";
    }

    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).cardColor,
        ),
        width: width,
        child: Text(
          text,
          style: latoMediumTextStyle(fontSize: fontSize, context: context),
        ),
      ),
    );
  }
}

TextStyle latoMediumTextStyle({
  required double fontSize,
  required BuildContext context,
  Color? color,
  double? height,
  TextDecoration? decoration,
}) {
  return TextStyle(
    color:
        (color != null) ? color : Theme.of(context).canvasColor, //Colors.black,
    fontSize: fontSize,
    height: (height != null) ? height : 0,
    decoration: decoration,
  );
}
