import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

import '../helper/helper.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController pageController;
  late OnboardingController onboardingController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    onboardingController = OnboardingController(pageController.initialPage);
    PrefData.isFirstTime = false;
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
    onboardingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: PageView.builder(
            controller: pageController,
            itemCount: 3,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged:
                (int page) => onboardingController.onPageChanged(page),
            itemBuilder: (BuildContext context, int index) {
              return getOnboardingsElements(pageController)[index];
            },
          ),
        ),
      ),
    );
  }
}
