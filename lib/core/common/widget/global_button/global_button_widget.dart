import 'package:flutter/material.dart';

import '../../../core.dart';

part 'global_button_controller.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    this.controller,
    this.onPressed,
    this.child,
    this.borderRadius = 50,
    this.textStyle,
    this.backgroundColor,
    this.disabledBackgroundColor,
    this.width,
    this.height,
    this.shadowColor = Colors.transparent,
    this.surfaceTintColor,
    this.elevation,
    this.borderColor,
    this.focusNode,
  });

  final GlobalButtonController? controller;
  final VoidCallback? onPressed;
  final Widget? child;
  final double borderRadius;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final double? width;
  final double? height;
  final Color? surfaceTintColor;
  final double? elevation;
  final Color? borderColor;
  final Color? shadowColor;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        surfaceTintColor: surfaceTintColor,
        shadowColor: shadowColor,
        padding: EdgeInsets.zero,
        maximumSize: Size(
          width ?? double.maxFinite,
          height ?? Dimensions.space48,
        ),
        minimumSize: Size(
          width ?? double.maxFinite,
          height ?? Dimensions.space48,
        ),
        elevation: elevation ?? 2,
        disabledBackgroundColor:
            disabledBackgroundColor ?? context.theme.hintColor,
        backgroundColor: backgroundColor ?? context.colorScheme.primary,
        shape: RoundedRectangleBorder(
          side:
              borderColor != null
                  ? BorderSide(color: borderColor!)
                  : BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        textStyle: textStyle,
      ),
      focusNode: focusNode,
      onPressed: onPressed,
      child: ValueListenableBuilder<Widget?>(
        valueListenable: controller ?? GlobalButtonController(),
        builder:
            (BuildContext context, Widget? value, _) =>
                value ?? child ?? const SizedBox.shrink(),
      ),
    );
  }
}
