import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/core.dart';

class OtpFieldWidget extends StatefulWidget {
  const OtpFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onCompleted,
    this.onChange,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String) onCompleted;
  final void Function(String)? onChange;
  @override
  State<OtpFieldWidget> createState() => _OtpFieldWidgetState();
}

class _OtpFieldWidgetState extends State<OtpFieldWidget> {
  @override
  Widget build(BuildContext context) {
    const int length = 5;
    final Color borderColor = context.colorScheme.primary;
    final Color errorColor = context.colorScheme.error;
    const Color fillColor = Palette.white;
    final PinTheme defaultPinTheme = PinTheme(
      width: Dimensions.space50,
      height: Dimensions.space50,
      textStyle: context.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(Dimensions.cornerRadius10),
        border: Border.all(color: Colors.transparent),
        boxShadow: [
          BoxShadow(
            color: context.theme.primaryColor.withOpacity(0.3),
            blurRadius: 14,
            spreadRadius: -4,
            offset: Offset(0, 8),
          ),
        ],
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimensions.space12),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Pinput(
          length: length,
          controller: widget.controller,
          focusNode: widget.focusNode,
          defaultPinTheme: defaultPinTheme,
          onCompleted: widget.onCompleted,
          onChanged: widget.onChange,
          focusedPinTheme: defaultPinTheme.copyWith(
            height: Dimensions.space50,
            width: Dimensions.space50,
            decoration: defaultPinTheme.decoration?.copyWith(
              border: Border.all(color: borderColor),
            ),
          ),
          errorPinTheme: defaultPinTheme.copyWith(
            decoration: BoxDecoration(
              color: errorColor,
              borderRadius: BorderRadius.circular(Dimensions.cornerRadius10),
            ),
          ),
        ),
      ),
    );
  }
}
