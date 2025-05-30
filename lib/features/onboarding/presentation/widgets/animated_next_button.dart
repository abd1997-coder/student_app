import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/onboarding/presentation/helper/onboarding_helper.dart';

class AnimatedNextButton extends StatefulWidget {
  const AnimatedNextButton({
    super.key,
    required this.currentIndex,
    required this.onPressed,
    required this.title,
    required this.color,
  });
  final int currentIndex;
  final void Function() onPressed;
  final String title;
  final Color color;
  @override
  State<AnimatedNextButton> createState() => _AnimatedNextButtonState();
}

class _AnimatedNextButtonState extends State<AnimatedNextButton>
    with SingleTickerProviderStateMixin, OnboardingHelper {
  late AnimationController _controller;
  late Animation<Offset> _textAnimation;

  final int totalItems = 3;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..repeat(reverse: true); // Loop animation

    _textAnimation = Tween<Offset>(
      begin: const Offset(0, 0), // Start at center
      end: const Offset(-0.3, 0), // Move slightly left
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: <Widget>[
            AnimatedBuilder(
              animation: _textAnimation,
              builder: (BuildContext context, Widget? child) {
                return Transform.translate(
                  offset: _textAnimation.value * 10, // Moves left and back
                  child: Row(
                    spacing: 8,
                    children: <Widget>[
                      Text(
                        widget.title.tr(),
                        style: buttonContentStyle(
                          context,
                        )?.copyWith(color: widget.color),
                      ),
                      Row(
                        children: List<SvgPicture>.generate(3, (int index) {
                          if (index == widget.currentIndex) {
                            return AssetsManager.images.onboarding.arrowBold
                                .svg(
                                  colorFilter: ColorFilter.mode(
                                    widget.color,
                                    BlendMode.srcIn,
                                  ),
                                );
                          } else {
                            return AssetsManager.images.onboarding.arrowLight
                                .svg(
                                  colorFilter: ColorFilter.mode(
                                    widget.color,
                                    BlendMode.srcIn,
                                  ),
                                );
                          }
                        }),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
