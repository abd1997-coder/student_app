import 'package:flutter/material.dart';

import '../../../core.dart';

class GlobalGradientButton extends StatelessWidget {
  const GlobalGradientButton({
    super.key,
    this.controller,
    this.onPressed,
    this.child,
    this.borderRadius = 4,
    this.width,
    this.height,
    this.focusNode,
  });

  final GlobalButtonController? controller;
  final VoidCallback? onPressed;
  final Widget? child;
  final double borderRadius;
  final double? width;
  final double? height;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(1.00, 0.00),
          end: Alignment(-1, 0),
          colors: <Color>[
            Color(0xFF188758),
            Color(0xFF2E5B8B),
          ],
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
      ),
      child: GlobalButton(
        backgroundColor: Colors.transparent,
        borderRadius: borderRadius,
        controller: controller,
        focusNode: focusNode,
        width: width,
        height: height,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
