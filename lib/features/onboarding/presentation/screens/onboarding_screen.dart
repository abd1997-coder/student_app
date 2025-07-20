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
          child: AnimatedBuilder(
            animation: pageController,
            builder: (BuildContext context, Widget? child) {
              double currentPage = 0;
              if (pageController.hasClients && pageController.page != null) {
                currentPage = pageController.page!;
              } else {
                currentPage = pageController.initialPage.toDouble();
              }
              final elements = getOnboardingsElements(pageController);
              return PageView.builder(
                controller: pageController,
                itemCount: elements.length,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged:
                    (int page) => onboardingController.onPageChanged(page),
                itemBuilder: (BuildContext context, int index) {
                  final double diff = (currentPage - index).abs();
                  final double opacity = (1.0 - diff).clamp(0.0, 1.0);
                  return Opacity(opacity: opacity, child: elements[index]);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
