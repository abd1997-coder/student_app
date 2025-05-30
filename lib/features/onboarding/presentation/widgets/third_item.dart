import 'package:flutter/material.dart';
import 'package:student_app/features/onboarding/presentation/widgets/animated_next_button.dart';

import '../../../../core/core.dart';
import '../helper/helper.dart';

class ThirdItemOnboarding extends StatefulWidget {
  const ThirdItemOnboarding({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<ThirdItemOnboarding> createState() => _ThirdItemOnboardingState();
}

class _ThirdItemOnboardingState extends State<ThirdItemOnboarding>
    with OnboardingHelper {
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
          Align(
            alignment: Alignment.centerRight,
            child: AssetsManager.images.onboarding.item3.image(),
          ),
          SizedBox(
            width: 350,
            child: Column(
              spacing: 25,
              children: <Widget>[
                Text(LocaleKeys.whyIsNajahi.tr(), style: titleStyle(context)),

                Text(
                  LocaleKeys.najahiCanDo.tr(),
                  style: subTitleStyle(context),

                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: AnimatedNextButton(
                title: LocaleKeys.next,
                color: context.colorScheme.primary,
                currentIndex: 2,
                onPressed: () {
                  context.replaceRoute(const SignRoute());
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
