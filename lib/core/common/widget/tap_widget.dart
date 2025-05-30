import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

// ignore: must_be_immutable
class TapWidget extends StatelessWidget {
  TapWidget({
    super.key,
    required this.title,
    required this.isSelected,
    this.fontSelectedColor = Palette.primary,
    this.fontUnSelectedColor = Palette.white,
    this.selectedColor = Palette.white,
    this.unSelectedColor = Palette.primary,
  });

  final String title;
  final bool isSelected;
  Color? selectedColor;
  Color? fontSelectedColor;
  Color? unSelectedColor;
  Color? fontUnSelectedColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: isSelected ? selectedColor : null,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: context.labelLarge!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: !isSelected ? fontUnSelectedColor : fontSelectedColor,
        ),
      ),
    );
  }
}
