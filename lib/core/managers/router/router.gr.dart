// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i27;
import 'package:flutter/material.dart' as _i28;
import 'package:student_app/core/common/models/video_model.dart' as _i30;
import 'package:student_app/features/accreditedLibraries/presentation/accredited_libraries_screen.dart'
    as _i1;
import 'package:student_app/features/auth/bloc/authentication_bloc.dart'
    as _i29;
import 'package:student_app/features/auth/presentation/screens/forget_password_options_screen.dart'
    as _i5;
import 'package:student_app/features/auth/presentation/screens/forget_password_screen.dart'
    as _i6;
import 'package:student_app/features/auth/presentation/screens/reset_password_screen.dart'
    as _i19;
import 'package:student_app/features/auth/presentation/screens/sign_screen.dart'
    as _i22;
import 'package:student_app/features/auth/presentation/screens/verification_code_screen.dart'
    as _i26;
import 'package:student_app/features/Balance/presentation/balance_screen.dart'
    as _i2;
import 'package:student_app/features/base/presentation/screens/base_screen.dart'
    as _i3;
import 'package:student_app/features/downloaded_lessons/presentation/screens/downloaded_lessons_screen.dart'
    as _i4;
import 'package:student_app/features/home/presentation/screens/home_screen.dart'
    as _i7;
import 'package:student_app/features/leaderBoard/presentation/leader_board_screen.dart'
    as _i8;
import 'package:student_app/features/leasons/presentation/screens/leasons_screen.dart'
    as _i9;
import 'package:student_app/features/materials/presentation/screens/materials_detail_screen.dart'
    as _i10;
import 'package:student_app/features/materials/presentation/screens/materials_screen.dart'
    as _i11;
import 'package:student_app/features/notifications/presentation/pages/notifications_screen.dart'
    as _i12;
import 'package:student_app/features/onboarding/presentation/screens/onboarding_screen.dart'
    as _i13;
import 'package:student_app/features/player/presentation/screens/player_screen.dart'
    as _i14;
import 'package:student_app/features/profile/presentation/profile_screen.dart'
    as _i15;
import 'package:student_app/features/questionResponse/presentation/question_response_detail_screen.dart'
    as _i16;
import 'package:student_app/features/questionResponse/presentation/question_response_screen.dart'
    as _i17;
import 'package:student_app/features/quiz/presentation/screens/quiz_screen.dart'
    as _i18;
import 'package:student_app/features/savedItems/presentation/screens/saved_items_screen.dart'
    as _i20;
import 'package:student_app/features/settings/presentation/screens/settings_screen.dart'
    as _i21;
import 'package:student_app/features/splash/presentation/screens/splash_screen.dart'
    as _i23;
import 'package:student_app/features/teachers/presentation/teacher_detail_screen.dart'
    as _i24;
import 'package:student_app/features/teachers/presentation/teachers_screen.dart'
    as _i25;

/// generated route for
/// [_i1.AccreditedLibrariesScreen]
class AccreditedLibrariesRoute extends _i27.PageRouteInfo<void> {
  const AccreditedLibrariesRoute({List<_i27.PageRouteInfo>? children})
    : super(AccreditedLibrariesRoute.name, initialChildren: children);

  static const String name = 'AccreditedLibrariesRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccreditedLibrariesScreen();
    },
  );
}

/// generated route for
/// [_i2.BalanceScreen]
class BalanceRoute extends _i27.PageRouteInfo<void> {
  const BalanceRoute({List<_i27.PageRouteInfo>? children})
    : super(BalanceRoute.name, initialChildren: children);

  static const String name = 'BalanceRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i2.BalanceScreen();
    },
  );
}

/// generated route for
/// [_i3.BaseScreen]
class BaseRoute extends _i27.PageRouteInfo<void> {
  const BaseRoute({List<_i27.PageRouteInfo>? children})
    : super(BaseRoute.name, initialChildren: children);

  static const String name = 'BaseRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i3.BaseScreen();
    },
  );
}

/// generated route for
/// [_i4.DownloadedLeasonsScreen]
class DownloadedLeasonsRoute extends _i27.PageRouteInfo<void> {
  const DownloadedLeasonsRoute({List<_i27.PageRouteInfo>? children})
    : super(DownloadedLeasonsRoute.name, initialChildren: children);

  static const String name = 'DownloadedLeasonsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i4.DownloadedLeasonsScreen();
    },
  );
}

/// generated route for
/// [_i5.ForgetPasswordOptionsScreen]
class ForgetPasswordOptionsRoute
    extends _i27.PageRouteInfo<ForgetPasswordOptionsRouteArgs> {
  ForgetPasswordOptionsRoute({
    _i28.Key? key,
    required _i29.AuthenticationBloc authenticationBloc,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         ForgetPasswordOptionsRoute.name,
         args: ForgetPasswordOptionsRouteArgs(
           key: key,
           authenticationBloc: authenticationBloc,
         ),
         initialChildren: children,
       );

  static const String name = 'ForgetPasswordOptionsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ForgetPasswordOptionsRouteArgs>();
      return _i5.ForgetPasswordOptionsScreen(
        key: args.key,
        authenticationBloc: args.authenticationBloc,
      );
    },
  );
}

class ForgetPasswordOptionsRouteArgs {
  const ForgetPasswordOptionsRouteArgs({
    this.key,
    required this.authenticationBloc,
  });

  final _i28.Key? key;

  final _i29.AuthenticationBloc authenticationBloc;

  @override
  String toString() {
    return 'ForgetPasswordOptionsRouteArgs{key: $key, authenticationBloc: $authenticationBloc}';
  }
}

/// generated route for
/// [_i6.ForgetPasswordScreen]
class ForgetPasswordRoute extends _i27.PageRouteInfo<ForgetPasswordRouteArgs> {
  ForgetPasswordRoute({
    _i28.Key? key,
    required _i29.AuthenticationBloc authenticationBloc,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         ForgetPasswordRoute.name,
         args: ForgetPasswordRouteArgs(
           key: key,
           authenticationBloc: authenticationBloc,
         ),
         initialChildren: children,
       );

  static const String name = 'ForgetPasswordRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ForgetPasswordRouteArgs>();
      return _i6.ForgetPasswordScreen(
        key: args.key,
        authenticationBloc: args.authenticationBloc,
      );
    },
  );
}

class ForgetPasswordRouteArgs {
  const ForgetPasswordRouteArgs({this.key, required this.authenticationBloc});

  final _i28.Key? key;

  final _i29.AuthenticationBloc authenticationBloc;

  @override
  String toString() {
    return 'ForgetPasswordRouteArgs{key: $key, authenticationBloc: $authenticationBloc}';
  }
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i27.PageRouteInfo<void> {
  const HomeRoute({List<_i27.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i7.HomeScreen();
    },
  );
}

/// generated route for
/// [_i8.LeaderBoardScreen]
class LeaderBoardRoute extends _i27.PageRouteInfo<void> {
  const LeaderBoardRoute({List<_i27.PageRouteInfo>? children})
    : super(LeaderBoardRoute.name, initialChildren: children);

  static const String name = 'LeaderBoardRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i8.LeaderBoardScreen();
    },
  );
}

/// generated route for
/// [_i9.LeasonsScreen]
class LeasonsRoute extends _i27.PageRouteInfo<void> {
  const LeasonsRoute({List<_i27.PageRouteInfo>? children})
    : super(LeasonsRoute.name, initialChildren: children);

  static const String name = 'LeasonsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i9.LeasonsScreen();
    },
  );
}

/// generated route for
/// [_i10.MaterialDetailScreen]
class MaterialDetailRoute extends _i27.PageRouteInfo<MaterialDetailRouteArgs> {
  MaterialDetailRoute({
    _i28.Key? key,
    required String id,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         MaterialDetailRoute.name,
         args: MaterialDetailRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'MaterialDetailRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MaterialDetailRouteArgs>();
      return _i10.MaterialDetailScreen(key: args.key, id: args.id);
    },
  );
}

class MaterialDetailRouteArgs {
  const MaterialDetailRouteArgs({this.key, required this.id});

  final _i28.Key? key;

  final String id;

  @override
  String toString() {
    return 'MaterialDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i11.MaterialsScreen]
class MaterialsRoute extends _i27.PageRouteInfo<void> {
  const MaterialsRoute({List<_i27.PageRouteInfo>? children})
    : super(MaterialsRoute.name, initialChildren: children);

  static const String name = 'MaterialsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i11.MaterialsScreen();
    },
  );
}

/// generated route for
/// [_i11.MaterialsView]
class MaterialsView extends _i27.PageRouteInfo<void> {
  const MaterialsView({List<_i27.PageRouteInfo>? children})
    : super(MaterialsView.name, initialChildren: children);

  static const String name = 'MaterialsView';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i11.MaterialsView();
    },
  );
}

/// generated route for
/// [_i12.NotificationsScreen]
class NotificationsRoute extends _i27.PageRouteInfo<void> {
  const NotificationsRoute({List<_i27.PageRouteInfo>? children})
    : super(NotificationsRoute.name, initialChildren: children);

  static const String name = 'NotificationsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i12.NotificationsScreen();
    },
  );
}

/// generated route for
/// [_i13.OnboardingScreen]
class OnboardingRoute extends _i27.PageRouteInfo<void> {
  const OnboardingRoute({List<_i27.PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i13.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i14.PlayerScreen]
class PlayerRoute extends _i27.PageRouteInfo<PlayerRouteArgs> {
  PlayerRoute({
    _i28.Key? key,
    required _i30.VideoModel videoModel,
    required String teacherName,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         PlayerRoute.name,
         args: PlayerRouteArgs(
           key: key,
           videoModel: videoModel,
           teacherName: teacherName,
         ),
         initialChildren: children,
       );

  static const String name = 'PlayerRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlayerRouteArgs>();
      return _i14.PlayerScreen(
        key: args.key,
        videoModel: args.videoModel,
        teacherName: args.teacherName,
      );
    },
  );
}

class PlayerRouteArgs {
  const PlayerRouteArgs({
    this.key,
    required this.videoModel,
    required this.teacherName,
  });

  final _i28.Key? key;

  final _i30.VideoModel videoModel;

  final String teacherName;

  @override
  String toString() {
    return 'PlayerRouteArgs{key: $key, videoModel: $videoModel, teacherName: $teacherName}';
  }
}

/// generated route for
/// [_i15.ProfileScreen]
class ProfileRoute extends _i27.PageRouteInfo<void> {
  const ProfileRoute({List<_i27.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i15.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i16.QuestionResponseResponseScreen]
class QuestionResponseResponseRoute extends _i27.PageRouteInfo<void> {
  const QuestionResponseResponseRoute({List<_i27.PageRouteInfo>? children})
    : super(QuestionResponseResponseRoute.name, initialChildren: children);

  static const String name = 'QuestionResponseResponseRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i16.QuestionResponseResponseScreen();
    },
  );
}

/// generated route for
/// [_i17.QuestionResponseScreen]
class QuestionResponseRoute extends _i27.PageRouteInfo<void> {
  const QuestionResponseRoute({List<_i27.PageRouteInfo>? children})
    : super(QuestionResponseRoute.name, initialChildren: children);

  static const String name = 'QuestionResponseRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i17.QuestionResponseScreen();
    },
  );
}

/// generated route for
/// [_i18.QuizScreen]
class QuizRoute extends _i27.PageRouteInfo<void> {
  const QuizRoute({List<_i27.PageRouteInfo>? children})
    : super(QuizRoute.name, initialChildren: children);

  static const String name = 'QuizRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i18.QuizScreen();
    },
  );
}

/// generated route for
/// [_i19.ResetPasswordScreen]
class ResetPasswordRoute extends _i27.PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    _i28.Key? key,
    required _i29.AuthenticationBloc authenticationBloc,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         ResetPasswordRoute.name,
         args: ResetPasswordRouteArgs(
           key: key,
           authenticationBloc: authenticationBloc,
         ),
         initialChildren: children,
       );

  static const String name = 'ResetPasswordRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResetPasswordRouteArgs>();
      return _i19.ResetPasswordScreen(
        key: args.key,
        authenticationBloc: args.authenticationBloc,
      );
    },
  );
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({this.key, required this.authenticationBloc});

  final _i28.Key? key;

  final _i29.AuthenticationBloc authenticationBloc;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, authenticationBloc: $authenticationBloc}';
  }
}

/// generated route for
/// [_i20.SavedItemsScreen]
class SavedItemsRoute extends _i27.PageRouteInfo<void> {
  const SavedItemsRoute({List<_i27.PageRouteInfo>? children})
    : super(SavedItemsRoute.name, initialChildren: children);

  static const String name = 'SavedItemsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i20.SavedItemsScreen();
    },
  );
}

/// generated route for
/// [_i21.SettingsScreen]
class SettingsRoute extends _i27.PageRouteInfo<void> {
  const SettingsRoute({List<_i27.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i21.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i22.SignScreen]
class SignRoute extends _i27.PageRouteInfo<void> {
  const SignRoute({List<_i27.PageRouteInfo>? children})
    : super(SignRoute.name, initialChildren: children);

  static const String name = 'SignRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i22.SignScreen();
    },
  );
}

/// generated route for
/// [_i23.SplashScreen]
class SplashRoute extends _i27.PageRouteInfo<void> {
  const SplashRoute({List<_i27.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i23.SplashScreen();
    },
  );
}

/// generated route for
/// [_i24.TeacherDetailScreen]
class TeacherDetailRoute extends _i27.PageRouteInfo<void> {
  const TeacherDetailRoute({List<_i27.PageRouteInfo>? children})
    : super(TeacherDetailRoute.name, initialChildren: children);

  static const String name = 'TeacherDetailRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i24.TeacherDetailScreen();
    },
  );
}

/// generated route for
/// [_i25.TeachersScreen]
class TeachersRoute extends _i27.PageRouteInfo<void> {
  const TeachersRoute({List<_i27.PageRouteInfo>? children})
    : super(TeachersRoute.name, initialChildren: children);

  static const String name = 'TeachersRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i25.TeachersScreen();
    },
  );
}

/// generated route for
/// [_i26.VerificationCodeScreen]
class VerificationCodeRoute
    extends _i27.PageRouteInfo<VerificationCodeRouteArgs> {
  VerificationCodeRoute({
    _i28.Key? key,
    required _i29.AuthenticationBloc authenticationBloc,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         VerificationCodeRoute.name,
         args: VerificationCodeRouteArgs(
           key: key,
           authenticationBloc: authenticationBloc,
         ),
         initialChildren: children,
       );

  static const String name = 'VerificationCodeRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerificationCodeRouteArgs>();
      return _i26.VerificationCodeScreen(
        key: args.key,
        authenticationBloc: args.authenticationBloc,
      );
    },
  );
}

class VerificationCodeRouteArgs {
  const VerificationCodeRouteArgs({this.key, required this.authenticationBloc});

  final _i28.Key? key;

  final _i29.AuthenticationBloc authenticationBloc;

  @override
  String toString() {
    return 'VerificationCodeRouteArgs{key: $key, authenticationBloc: $authenticationBloc}';
  }
}
