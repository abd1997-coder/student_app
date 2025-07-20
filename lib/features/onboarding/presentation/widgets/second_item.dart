import 'package:flutter/material.dart';
import 'package:student_app/features/onboarding/presentation/widgets/animated_next_button.dart';

import '../../../../core/core.dart';
import '../helper/helper.dart';

class SecondItemOnboarding extends StatefulWidget {
  const SecondItemOnboarding({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<SecondItemOnboarding> createState() => _SecondItemOnboardingState();
}

class _SecondItemOnboardingState extends State<SecondItemOnboarding>
    with OnboardingHelper {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetsManager.images.onboarding.screen2.provider(),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[
            SizedBox(
              width: 350,
              child: Column(
                spacing: 25,
                children: <Widget>[
                  Text(
                    LocaleKeys.additionalToOurFeatures.tr(),
                    style: titleStyle(context),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      LocaleKeys.ourFeatureMsg.tr(),
                      style: subTitleStyle(context),

                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: AssetsManager.images.onboarding.item2.image(height: 300),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(end: 40, bottom: 15),
                child: AnimatedNextButton(
                  currentIndex: 1,
                  title: LocaleKeys.next,
                  color: context.colorScheme.secondary,
                  onPressed: () {
                    widget.pageController.animateToPage(
                      2,
                      duration: Duration(seconds: 1),
                      curve: Curves.ease,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
