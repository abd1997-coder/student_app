import 'package:flutter/material.dart';

void fieldFocusChange({
  required BuildContext context,
  required FocusNode focusNode,
  FocusNode? nextFocusNode,
}) {
  focusNode.unfocus();
  FocusScope.of(context).requestFocus(nextFocusNode);
}
