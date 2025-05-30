import 'package:flutter/material.dart';

import '../../onboarding.dart';

List<Widget> getOnboardingsElements(PageController pageController) {
  return <Widget>[
    FirstItemOnboarding(pageController: pageController),
    SecondItemOnboarding(pageController: pageController),
    ThirdItemOnboarding(pageController: pageController),
  ];
}
