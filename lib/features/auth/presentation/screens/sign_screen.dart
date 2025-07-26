import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/auth/bloc/authentication_bloc.dart';

import '../widgets/decorated_page.dart';
import '../widgets/login_body.dart';
import '../widgets/signup_body.dart';

@RoutePage()
class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (BuildContext context) => getIt<AuthenticationBloc>(),
      child: const SignView(),
    );
  }
}

class SignView extends StatefulWidget {
  const SignView({super.key});

  @override
  State<SignView> createState() => _SignViewState();
}

class _SignViewState extends State<SignView> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: DecoratedPage(
        child: Column(
          children: <Widget>[
            SizedBox(height: 6.h),
            AssetsManager.images.decoratedLogo.image(
              width: ResponsiveUtils.responsiveSize(
                context,
                mobile: 88,
                tablet: 120,
                desktop: 120,
              ),
              height: ResponsiveUtils.responsiveSize(
                context,
                mobile: 88,
                tablet: 120,
                desktop: 120,
              ),
            ),
            SizedBox(height: 4.h),
            // TabBar
            Stack(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => _onTabSelected(0),
                      child: Container(
                        width: 50.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color:
                              _selectedIndex == 0
                                  ? context.theme.scaffoldBackgroundColor
                                  : Colors.transparent,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        // padding: const EdgeInsets.symmetric(vertical: 12),
                        alignment: Alignment.center,
                        child: Text(
                          LocaleKeys.signUp.tr(),
                          style: context.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color:
                                _selectedIndex == 0
                                    ? context.colorScheme.primary
                                    : context.colorScheme.surface,
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () => _onTabSelected(1),
                      child: Container(
                        width: 50.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color:
                              _selectedIndex == 1
                                  ? context.theme.scaffoldBackgroundColor
                                  : Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(16),
                            topRight: const Radius.circular(16),
                            bottomRight:
                                _selectedIndex == 0
                                    ? const Radius.circular(16)
                                    : Radius.zero,
                          ),
                        ),
                        // padding: const EdgeInsets.symmetric(vertical: 12),
                        alignment: Alignment.center,
                        child: Text(
                          LocaleKeys.signIn.tr(),
                          style: context.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color:
                                _selectedIndex == 1
                                    ? context.colorScheme.primary
                                    : context.colorScheme.surface,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                _selectedIndex == 1
                    ? Positioned(
                      bottom: -.1.h,
                      right: -.8.w,
                      left: 0,
                      child: AssetsManager.images.leftWave.image(
                        height: 4.h,
                        color: context.theme.scaffoldBackgroundColor,
                      ),
                    )
                    : Positioned(
                      bottom: -.1.h,
                      right: 0,
                      left: -.8.w,
                      child: AssetsManager.images.rightWave.image(
                        height: 4.h,
                        color: context.theme.scaffoldBackgroundColor,
                      ),
                    ),
              ],
            ),
            Expanded(
              child:
                  _selectedIndex == 0 ? const SignupBody() : const LoginBody(),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Clipper for the body part
class BodyClipper extends CustomClipper<Path> {
  final int selectedIndex;
  final double borderRadius;

  BodyClipper(this.selectedIndex, this.borderRadius);

  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, borderRadius);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, borderRadius);

    // If "تسجيل دخول" (index 1) is selected, clip the bottom left of "إنشاء حساب" side
    if (selectedIndex == 1) {
      path.lineTo(
        size.width / 2,
        borderRadius,
      ); // Move to the middle of the top edge
      path.arcToPoint(
        Offset(size.width / 2 - borderRadius, 0),
        radius: Radius.circular(borderRadius),
        clockwise: false,
      );
      path.lineTo(0, 0); // Complete the top left corner if not clipped
    }
    // If "إنشاء حساب" (index 0) is selected, clip the bottom right of "تسجيل دخول" side
    else if (selectedIndex == 0) {
      path.lineTo(
        size.width / 2,
        borderRadius,
      ); // Move to the middle of the top edge
      path.arcToPoint(
        Offset(size.width / 2 + borderRadius, 0),
        radius: Radius.circular(borderRadius),
        clockwise: true,
      );
      path.lineTo(
        size.width,
        0,
      ); // Complete the top right corner if not clipped
    }

    // Now, adjust the path for the curved part that meets the unselected button
    if (selectedIndex == 0) {
      // Signup is selected, so login button is unselected (right side)
      // The body needs to curve at its top-right where it meets the transparent login button
      path.lineTo(size.width / 2 + borderRadius, 0);
      path.arcToPoint(
        Offset(size.width / 2, borderRadius),
        radius: Radius.circular(borderRadius),
        clockwise: true,
      );
    } else {
      // Login is selected, so signup button is unselected (left side)
      // The body needs to curve at its top-left where it meets the transparent signup button
      path.lineTo(size.width / 2 - borderRadius, 0);
      path.arcToPoint(
        Offset(size.width / 2, borderRadius),
        radius: Radius.circular(borderRadius),
        clockwise: false,
      );
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // Only re-clip if the selected index changes
    return oldClipper is BodyClipper &&
        oldClipper.selectedIndex != selectedIndex;
  }
}
