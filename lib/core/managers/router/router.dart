// ignore_for_file: always_specify_types

import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

export 'auto_router_observer.dart';
export 'router.gr.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  AppRouter() : super(navigatorKey: navigatorKey);
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = <AutoRoute>[
    CustomRoute(initial: true, page: SplashRoute.page),
    CustomRoute(page: OnboardingRoute.page),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: SignRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: VerificationCodeRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: ForgetPasswordOptionsRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: ForgetPasswordRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: ResetPasswordRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: MaterialsRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: TeachersRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: TeacherDetailRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: NotificationsRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: MaterialDetailRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: PlayerRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: DownloadedLeasonsRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: SavedItemsRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: QuestionResponseRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: QuestionResponseResponseRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: AccreditedLibrariesRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: ProfileRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: BalanceRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: LeaderBoardRoute.page,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      page: LocalPlayerRoute.page,
    ),
    CustomRoute<BaseRoute>(
      page: BaseRoute.page,
      children: <AutoRoute>[
        CustomRoute(page: HomeRoute.page),
        CustomRoute(page: QuizRoute.page),
        CustomRoute(page: LeasonsRoute.page),
        CustomRoute(page: SettingsRoute.page),
      ],
    ),
  ];
}
