import 'package:flutter/material.dart';

abstract class TextFieldController extends ValueNotifier<String?> {
  TextFieldController(super.value);

  void onTextChange(String text);

  void trim(String? text, TextEditingController controller);
}

class TextFieldControllerImpl extends TextFieldController {
  TextFieldControllerImpl(super.value);

  @override
  void onTextChange(String text) {
    value = text;
    notifyListeners();
  }

  @override
  void trim(String? text, TextEditingController controller) {
    value = text?.trim();
    if (value?.isEmpty ?? true) {
      controller.clear();
    }
    notifyListeners();
  }
}
