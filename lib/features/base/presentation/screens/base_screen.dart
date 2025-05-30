import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../widgets/custom_navigation_bar.dart';

@RoutePage()
class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  late TabsRouter _tabsRouter;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // Prevents default back behavior
      onPopInvokedWithResult: (bool didPop, _) {
        if (didPop) return;
        // If not on home, switch to home
        if (_tabsRouter.activeIndex != 0) {
          _tabsRouter.setActiveIndex(0);
        } else {
          // Call HomeBloc function to handle search deactivation or exit
          // Home Bloc is a Singleton instance
          exit(0);
        }
      },

      child: SafeArea(
        child: AutoTabsScaffold(
          animationCurve: Curves.bounceIn,
          animationDuration: const Duration(milliseconds: 100),
          routes: const <PageRouteInfo>[
            HomeRoute(),
            LeasonsRoute(),
            QuizRoute(),
            SettingsRoute(),
          ],
          bottomNavigationBuilder: (_, TabsRouter tabsRouter) {
            _tabsRouter = tabsRouter;
            return CustomTabBar(
              selectedIndex: tabsRouter.activeIndex,

              onItemSelected: tabsRouter.setActiveIndex,
              backgroundColor: context.colorScheme.surface,
              items: <CustomTabBarItem>[
                CustomTabBarItem(
                  inactiveWidget: AssetsManager.svg.navbar.home.svg(),
                  activeWidget: AssetsManager.svg.navbar.home.svg(
                    colorFilter: ColorFilter.mode(
                      context.colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                  title: "الصفحة الرئيسية",
                ),
                CustomTabBarItem(
                  inactiveWidget: AssetsManager.svg.navbar.cart.svg(),
                  activeWidget: AssetsManager.svg.navbar.cart.svg(
                    colorFilter: ColorFilter.mode(
                      context.colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                  title: "دروسي",
                ),
                CustomTabBarItem(
                  inactiveWidget: AssetsManager.svg.navbar.quiz.svg(),
                  activeWidget: AssetsManager.svg.navbar.quiz.svg(
                    colorFilter: ColorFilter.mode(
                      context.colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                  title: "الاختبارات",
                ),
                CustomTabBarItem(
                  inactiveWidget: AssetsManager.svg.navbar.profile.svg(),
                  activeWidget: AssetsManager.svg.navbar.profile.svg(
                    colorFilter: ColorFilter.mode(
                      context.colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                  title: "الملف الشخصي",
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
