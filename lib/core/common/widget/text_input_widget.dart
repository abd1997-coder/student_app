import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart' as intl;

import '../../core.dart';

class TextInputWidget extends StatefulWidget {
  const TextInputWidget({
    super.key,
    this.controller,
    this.textAlignVertical,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    required this.focusNode,
    this.nextFocusNode,
    this.prefixText,
    this.hintText,
    this.validator,
    this.onChanged,
    this.maxLength,
    this.onFieldSubmitted,
    this.readOnly = false,
    this.enabled = true,
    this.autoFocus = false,
    this.onTap,
    this.maxLines,
    this.expands = false,
    this.showCursor = true,
    this.prefixSvgPathIcon,
    required this.isEmpty,
    this.suffixIcon,
    this.suffixText,
    this.height = 104,
    this.obscureText = false,
    this.isPassword = false,
    this.fontColor,
    this.borderColor,
    this.toggleObscureText,
    this.fontSize,
    this.vertical,
    this.scrollPadding,
    this.minLines,
    this.counterBuilder,
    this.initialValue,
    this.cursorHeight = 22,
    this.labelText,
    this.prefixPadding,
    this.prefixIconConstraints,
    this.inputFormatters,
    this.textDirection,
    this.maxLengthEnforcement,
    this.onEditingComplete,
    this.autovalidateMode,
    this.onTapOutside,
  });

  final InputCounterWidgetBuilder? counterBuilder;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final String? prefixText;
  final String? hintText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final int? maxLength;
  final void Function(String?)? onFieldSubmitted;
  final bool readOnly;
  final bool enabled;
  final bool expands;
  final bool autoFocus;
  final void Function()? onTap;
  final int? maxLines;
  final bool showCursor;
  final String? prefixSvgPathIcon;
  final bool isEmpty;
  final Widget? suffixIcon;
  final String? suffixText;
  final double? height;
  final double? fontSize;
  final double? vertical;
  final Color? fontColor;
  final Color? borderColor;
  final int? minLines;
  final bool obscureText;
  final bool isPassword;
  final void Function()? toggleObscureText;
  final void Function()? onEditingComplete;
  final EdgeInsets? scrollPadding;
  final TextAlignVertical? textAlignVertical;
  final double cursorHeight;
  final String? initialValue;
  final String? labelText;
  final Widget? prefixPadding;
  final BoxConstraints? prefixIconConstraints;
  final TextDirection? textDirection;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final AutovalidateMode? autovalidateMode;
  final void Function(PointerDownEvent)? onTapOutside;
  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  late Color fillColor;
  late Color borderColor;
  bool isRTL(String text) {
    return intl.Bidi.detectRtlDirectionality(text);
  }

  @override
  void initState() {
    super.initState();
    fillColor = Palette.white;
    borderColor = widget.borderColor ?? Colors.transparent;
    widget.focusNode.addListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    if (widget.focusNode.hasFocus) {
      setState(() {
        borderColor = Palette.primary;
      });
    } else if (widget.isEmpty) {
      setState(() {
        borderColor = widget.borderColor ?? Colors.transparent;
      });
    }
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_handleFocusChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      focusNode: widget.focusNode,
      scrollPadding: widget.scrollPadding ?? const EdgeInsets.all(20),
      textAlignVertical: widget.textAlignVertical ?? TextAlignVertical.center,
      enabled: widget.enabled,

      controller: widget.controller,
      keyboardType: widget.keyboardType,
      maxLength: widget.maxLength,
      onTapOutside: (PointerDownEvent event) {
        widget.onTapOutside?.call(event);
        if (widget.readOnly) {
          widget.focusNode.unfocus();
        }
      },

      autovalidateMode: widget.autovalidateMode,
      onEditingComplete: widget.onEditingComplete,
      maxLengthEnforcement: widget.maxLengthEnforcement,
      inputFormatters: widget.inputFormatters,
      obscureText: widget.obscureText,
      obscuringCharacter: '*',
      maxLines: widget.maxLines ?? 1,
      minLines: widget.minLines,
      autocorrect: false,
      enableSuggestions: false,
      autofocus: widget.autoFocus,
      validator: widget.validator,
      onChanged: widget.onChanged,
      textInputAction: widget.textInputAction,
      cursorColor: context.colorScheme.primary,
      style: context.bodySmall?.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: widget.fontSize ?? context.bodySmall?.fontSize ?? 0.0,
      ),
      textDirection:
          widget.textDirection ??
          (isRTL(widget.controller?.text ?? "")
              ? TextDirection.rtl
              : TextDirection.ltr),
      showCursor: widget.showCursor,
      cursorHeight: widget.cursorHeight,
      cursorErrorColor: context.colorScheme.error,
      cursorWidth: 2.2,
      cursorRadius: const Radius.circular(6),
      buildCounter: widget.counterBuilder,
      decoration: InputDecoration(
        fillColor: fillColor,
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: widget.vertical ?? 15,
        ),
        prefixIconConstraints: widget.prefixIconConstraints,
        isDense: true,
        prefixText: widget.prefixText,
        prefixStyle: context.bodySmall?.copyWith(
          color:
              widget.focusNode.hasFocus || !widget.isEmpty
                  ? widget.fontColor ?? context.colorScheme.onSurface
                  : context.theme.hintColor,
          fontSize: widget.fontSize ?? context.bodySmall?.fontSize ?? 0.0,
        ),
        prefixIcon:
            widget.prefixSvgPathIcon != null
                ? Container(
                  padding: const EdgeInsetsDirectional.only(
                    top: 7,
                    bottom: 7,
                    start: 5,
                    end: 5,
                  ),
                  margin: const EdgeInsets.all(5),
                  child: SvgPicture.asset(
                    widget.prefixSvgPathIcon!,
                    colorFilter: ColorFilter.mode(
                      widget.focusNode.hasFocus || !widget.isEmpty
                          ? context.theme.primaryColor
                          : context.theme.hintColor,
                      BlendMode.srcIn,
                    ),
                  ),
                )
                : widget.prefixPadding,
        suffixText: widget.suffixText,
        suffixStyle: context.bodySmall?.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: widget.fontSize ?? context.bodySmall?.fontSize ?? 0.0,
        ),
        suffixIcon: suffixIconCondition(context),
        hintText: widget.hintText,
        hintStyle: context.bodySmall?.copyWith(
          fontSize: widget.fontSize ?? context.bodySmall?.fontSize ?? 0.0,
          fontWeight: FontWeight.w400,
          color: widget.fontColor ?? context.theme.hintColor,
        ),
        hintTextDirection:
            context.locale.isRTL ? TextDirection.rtl : TextDirection.ltr,
        hintMaxLines: 3,
        labelText: widget.labelText,
        labelStyle: context.bodySmall?.copyWith(
          fontSize: widget.fontSize ?? context.bodySmall?.fontSize ?? 0.0,
          fontWeight: FontWeight.w600,
          color: widget.fontColor ?? context.theme.hintColor,
        ),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: borderColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: borderColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: context.colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: context.colorScheme.error),
        ),
        errorStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: context.labelLarge?.fontSize ?? 12,
          color: context.colorScheme.error,
          height: 0,
        ),
        errorMaxLines: 3,
      ),
      onFieldSubmitted:
          widget.onFieldSubmitted ??
          (String? value) {
            fieldFocusChange(
              context: context,
              focusNode: widget.focusNode,
              nextFocusNode: widget.nextFocusNode,
            );
          },
      expands: widget.expands,
      readOnly: widget.readOnly,
      onTap: widget.onTap,
    );
  }

  Widget? suffixIconCondition(BuildContext context) {
    if (widget.isPassword) {
      return IconButton(
        icon: SvgPicture.asset(
          widget.obscureText
              ? AssetsManager.svg.eye.path
              : AssetsManager.svg.eyeSlash.path,
        ),
        onPressed: widget.toggleObscureText,
      );
    }
    if (widget.suffixIcon != null) {
      return widget.suffixIcon;
    }
    return null;
  }
}
