import 'package:flutter/material.dart';
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
            const SizedBox(height: 40),
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
            const SizedBox(height: 40),
            // TabBar
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onTabSelected(0),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color:
                            _selectedIndex == 0
                                ? context.theme.scaffoldBackgroundColor
                                : Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                          bottomLeft:
                              _selectedIndex == 1
                                  ? Radius.circular(16)
                                  : Radius.zero,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
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
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onTabSelected(1),
                    child: Container(
                      height: 60,
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
                          bottomLeft: Radius.zero,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
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
