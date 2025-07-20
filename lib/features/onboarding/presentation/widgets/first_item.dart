import 'package:flutter/material.dart';
import 'package:student_app/features/onboarding/presentation/widgets/animated_next_button.dart';

import '../../../../core/core.dart';
import '../helper/helper.dart';

class FirstItemOnboarding extends StatefulWidget {
  const FirstItemOnboarding({super.key, required this.pageController});
  final PageController pageController;
  @override
  State<FirstItemOnboarding> createState() => _FirstItemOnboardingState();
}

class _FirstItemOnboardingState extends State<FirstItemOnboarding>
    with SingleTickerProviderStateMixin, OnboardingHelper {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetsManager.images.onboarding.screen1.provider(),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          AssetsManager.images.onboarding.item1.image(),

          Text(LocaleKeys.whatIsNajahi.tr(), style: titleStyle(context)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              LocaleKeys.najahiItIs.tr(),
              style: subTitleStyle(context),
              textAlign: TextAlign.center,
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: AnimatedNextButton(
                currentIndex: 0,
                title: LocaleKeys.start,
                color: context.colorScheme.primary,
                onPressed: () {
                  widget.pageController.animateToPage(
                    1,
                    duration: const Duration(seconds: 1),
                    curve: Curves.ease,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
