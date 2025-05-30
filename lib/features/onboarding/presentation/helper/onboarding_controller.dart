import 'package:flutter/cupertino.dart';

class OnboardingController extends ValueNotifier<int> {
  OnboardingController(super.value);

  void onPageChanged(int page) {
    value = page;
    notifyListeners();
  }
}
