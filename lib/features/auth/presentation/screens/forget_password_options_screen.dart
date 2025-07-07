import 'package:flutter/material.dart';
import 'package:student_app/core/managers/assets/app_assets.dart';
import 'package:student_app/features/auth/bloc/authentication_bloc.dart';
import 'package:student_app/features/auth/presentation/widgets/decorated_page.dart';

import '../../../../core/core.dart';

@RoutePage()
class ForgetPasswordOptionsScreen extends StatelessWidget {
  const ForgetPasswordOptionsScreen({
    super.key,
    required this.authenticationBloc,
  });
  final AuthenticationBloc authenticationBloc;
  @override
  Widget build(BuildContext context) {
    return const ForgetPasswordOptionsView();
  }
}

class ForgetPasswordOptionsView extends StatefulWidget {
  const ForgetPasswordOptionsView({super.key});

  @override
  State<ForgetPasswordOptionsView> createState() =>
      _ForgetPasswordOptionsViewState();
}

class _ForgetPasswordOptionsViewState extends State<ForgetPasswordOptionsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: DecoratedPage(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          context.maybePop();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                            right: 8,
                            top: 4,
                            bottom: 4,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black87,
                          ),
                        ),
                      ),

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
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: context.theme.scaffoldBackgroundColor,
                      borderRadius: const BorderRadiusDirectional.only(
                        topEnd: Radius.circular(16),
                        topStart: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                        vertical: 8,
                        horizontal: 40,
                      ),
                      child: Column(
                        spacing: 50,
                        mainAxisSize: MainAxisSize.max,

                        children: <Widget>[
                          Text(
                            'نسيت كلمة المرور',
                            style: context.bodyLarge?.copyWith(
                              color: context.colorScheme.primary,
                            ),
                          ),

                          GlobalButton(
                            height: 100,
                            onPressed: () {
                              context.pushRoute(
                                ForgetPasswordRoute(
                                  authenticationBloc:
                                      getIt<AuthenticationBloc>(),
                                ),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 10,
                              children: <Widget>[
                                Text(
                                  'استعادة عن طريق الرقم',
                                  style: context.titleSmall?.copyWith(
                                    color: context.colorScheme.surface,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Image.asset(
                                  AppAssets.phoneIcon,
                                  width: 45,
                                  height: 45,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                          GlobalButton(
                            height: 100,
                            onPressed: () {},
                            child: Row(
                              spacing: 10,
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: <Widget>[
                                Text(
                                  'تواصل مع الادمن',
                                  style: context.titleSmall?.copyWith(
                                    color: context.colorScheme.surface,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Image.asset(
                                  AppAssets.adminIcon,
                                  width: 45,
                                  height: 45,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
