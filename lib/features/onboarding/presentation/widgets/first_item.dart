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
  late AnimationController _controller;
  late Animation<Offset> _positionAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize Animation Controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Animation duration
    );

    // Move from outside top-left to the center
    _positionAnimation = Tween<Offset>(
      begin: const Offset(-1.5, -1.5), // Start from top-left (outside screen)
      end: const Offset(0, 0), // Move to its normal position
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut, // Smooth effect
      ),
    );

    // Scaling animation from small to normal size
    _scaleAnimation = Tween<double>(
      begin: 0.1,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
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
          AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget? child) {
              return Transform.translate(
                offset:
                    _positionAnimation.value *
                    MediaQuery.of(
                      context,
                    ).size.width, // Convert Offset to actual position
                child: Transform.scale(
                  scale: _scaleAnimation.value,
                  child: AssetsManager.images.onboarding.item1.image(),
                ),
              );
            },
          ),
          Text(LocaleKeys.whatIsNajahi.tr(), style: titleStyle(context)),
          Text(
            LocaleKeys.najahiItIs.tr(),
            style: subTitleStyle(context),
            textAlign: TextAlign.center,
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
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.bounceIn,
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
