// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i28;
import 'package:flutter/material.dart' as _i29;
import 'package:student_app/core/common/models/video_model.dart' as _i31;
import 'package:student_app/features/accreditedLibraries/presentation/accredited_libraries_screen.dart'
    as _i1;
import 'package:student_app/features/auth/bloc/authentication_bloc.dart'
    as _i30;
import 'package:student_app/features/auth/presentation/screens/forget_password_options_screen.dart'
    as _i5;
import 'package:student_app/features/auth/presentation/screens/forget_password_screen.dart'
    as _i6;
import 'package:student_app/features/auth/presentation/screens/reset_password_screen.dart'
    as _i20;
import 'package:student_app/features/auth/presentation/screens/sign_screen.dart'
    as _i23;
import 'package:student_app/features/auth/presentation/screens/verification_code_screen.dart'
    as _i27;
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
    as _i11;
import 'package:student_app/features/materials/presentation/screens/materials_screen.dart'
    as _i12;
import 'package:student_app/features/notifications/presentation/pages/notifications_screen.dart'
    as _i13;
import 'package:student_app/features/onboarding/presentation/screens/onboarding_screen.dart'
    as _i14;
import 'package:student_app/features/player/presentation/screens/local_player_screen.dart'
    as _i10;
import 'package:student_app/features/player/presentation/screens/player_screen.dart'
    as _i15;
import 'package:student_app/features/profile/presentation/profile_screen.dart'
    as _i16;
import 'package:student_app/features/questionResponse/presentation/question_response_detail_screen.dart'
    as _i17;
import 'package:student_app/features/questionResponse/presentation/question_response_screen.dart'
    as _i18;
import 'package:student_app/features/quiz/presentation/screens/quiz_screen.dart'
    as _i19;
import 'package:student_app/features/savedItems/presentation/screens/saved_items_screen.dart'
    as _i21;
import 'package:student_app/features/settings/presentation/screens/settings_screen.dart'
    as _i22;
import 'package:student_app/features/splash/presentation/screens/splash_screen.dart'
    as _i24;
import 'package:student_app/features/teachers/presentation/teacher_detail_screen.dart'
    as _i25;
import 'package:student_app/features/teachers/presentation/teachers_screen.dart'
    as _i26;

/// generated route for
/// [_i1.AccreditedLibrariesScreen]
class AccreditedLibrariesRoute extends _i28.PageRouteInfo<void> {
  const AccreditedLibrariesRoute({List<_i28.PageRouteInfo>? children})
    : super(AccreditedLibrariesRoute.name, initialChildren: children);

  static const String name = 'AccreditedLibrariesRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccreditedLibrariesScreen();
    },
  );
}

/// generated route for
/// [_i2.BalanceScreen]
class BalanceRoute extends _i28.PageRouteInfo<void> {
  const BalanceRoute({List<_i28.PageRouteInfo>? children})
    : super(BalanceRoute.name, initialChildren: children);

  static const String name = 'BalanceRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i2.BalanceScreen();
    },
  );
}

/// generated route for
/// [_i3.BaseScreen]
class BaseRoute extends _i28.PageRouteInfo<void> {
  const BaseRoute({List<_i28.PageRouteInfo>? children})
    : super(BaseRoute.name, initialChildren: children);

  static const String name = 'BaseRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i3.BaseScreen();
    },
  );
}

/// generated route for
/// [_i4.DownloadedLeasonsScreen]
class DownloadedLeasonsRoute extends _i28.PageRouteInfo<void> {
  const DownloadedLeasonsRoute({List<_i28.PageRouteInfo>? children})
    : super(DownloadedLeasonsRoute.name, initialChildren: children);

  static const String name = 'DownloadedLeasonsRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i4.DownloadedLeasonsScreen();
    },
  );
}

/// generated route for
/// [_i5.ForgetPasswordOptionsScreen]
class ForgetPasswordOptionsRoute
    extends _i28.PageRouteInfo<ForgetPasswordOptionsRouteArgs> {
  ForgetPasswordOptionsRoute({
    _i29.Key? key,
    required _i30.AuthenticationBloc authenticationBloc,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         ForgetPasswordOptionsRoute.name,
         args: ForgetPasswordOptionsRouteArgs(
           key: key,
           authenticationBloc: authenticationBloc,
         ),
         initialChildren: children,
       );

  static const String name = 'ForgetPasswordOptionsRoute';

  static _i28.PageInfo page = _i28.PageInfo(
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

  final _i29.Key? key;

  final _i30.AuthenticationBloc authenticationBloc;

  @override
  String toString() {
    return 'ForgetPasswordOptionsRouteArgs{key: $key, authenticationBloc: $authenticationBloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ForgetPasswordOptionsRouteArgs) return false;
    return key == other.key && authenticationBloc == other.authenticationBloc;
  }

  @override
  int get hashCode => key.hashCode ^ authenticationBloc.hashCode;
}

/// generated route for
/// [_i6.ForgetPasswordScreen]
class ForgetPasswordRoute extends _i28.PageRouteInfo<ForgetPasswordRouteArgs> {
  ForgetPasswordRoute({
    _i29.Key? key,
    required _i30.AuthenticationBloc authenticationBloc,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         ForgetPasswordRoute.name,
         args: ForgetPasswordRouteArgs(
           key: key,
           authenticationBloc: authenticationBloc,
         ),
         initialChildren: children,
       );

  static const String name = 'ForgetPasswordRoute';

  static _i28.PageInfo page = _i28.PageInfo(
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

  final _i29.Key? key;

  final _i30.AuthenticationBloc authenticationBloc;

  @override
  String toString() {
    return 'ForgetPasswordRouteArgs{key: $key, authenticationBloc: $authenticationBloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ForgetPasswordRouteArgs) return false;
    return key == other.key && authenticationBloc == other.authenticationBloc;
  }

  @override
  int get hashCode => key.hashCode ^ authenticationBloc.hashCode;
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i28.PageRouteInfo<void> {
  const HomeRoute({List<_i28.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i7.HomeScreen();
    },
  );
}

/// generated route for
/// [_i8.LeaderBoardScreen]
class LeaderBoardRoute extends _i28.PageRouteInfo<void> {
  const LeaderBoardRoute({List<_i28.PageRouteInfo>? children})
    : super(LeaderBoardRoute.name, initialChildren: children);

  static const String name = 'LeaderBoardRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i8.LeaderBoardScreen();
    },
  );
}

/// generated route for
/// [_i9.LeasonsScreen]
class LeasonsRoute extends _i28.PageRouteInfo<void> {
  const LeasonsRoute({List<_i28.PageRouteInfo>? children})
    : super(LeasonsRoute.name, initialChildren: children);

  static const String name = 'LeasonsRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i9.LeasonsScreen();
    },
  );
}

/// generated route for
/// [_i10.LocalPlayerScreen]
class LocalPlayerRoute extends _i28.PageRouteInfo<LocalPlayerRouteArgs> {
  LocalPlayerRoute({
    _i29.Key? key,
    required _i31.VideoModel videoModel,
    required String teacherName,
    required bool myLeason,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         LocalPlayerRoute.name,
         args: LocalPlayerRouteArgs(
           key: key,
           videoModel: videoModel,
           teacherName: teacherName,
           myLeason: myLeason,
         ),
         initialChildren: children,
       );

  static const String name = 'LocalPlayerRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LocalPlayerRouteArgs>();
      return _i10.LocalPlayerScreen(
        key: args.key,
        videoModel: args.videoModel,
        teacherName: args.teacherName,
        myLeason: args.myLeason,
      );
    },
  );
}

class LocalPlayerRouteArgs {
  const LocalPlayerRouteArgs({
    this.key,
    required this.videoModel,
    required this.teacherName,
    required this.myLeason,
  });

  final _i29.Key? key;

  final _i31.VideoModel videoModel;

  final String teacherName;

  final bool myLeason;

  @override
  String toString() {
    return 'LocalPlayerRouteArgs{key: $key, videoModel: $videoModel, teacherName: $teacherName, myLeason: $myLeason}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LocalPlayerRouteArgs) return false;
    return key == other.key &&
        videoModel == other.videoModel &&
        teacherName == other.teacherName &&
        myLeason == other.myLeason;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      videoModel.hashCode ^
      teacherName.hashCode ^
      myLeason.hashCode;
}

/// generated route for
/// [_i11.MaterialDetailScreen]
class MaterialDetailRoute extends _i28.PageRouteInfo<MaterialDetailRouteArgs> {
  MaterialDetailRoute({
    _i29.Key? key,
    required String id,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         MaterialDetailRoute.name,
         args: MaterialDetailRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'MaterialDetailRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MaterialDetailRouteArgs>();
      return _i11.MaterialDetailScreen(key: args.key, id: args.id);
    },
  );
}

class MaterialDetailRouteArgs {
  const MaterialDetailRouteArgs({this.key, required this.id});

  final _i29.Key? key;

  final String id;

  @override
  String toString() {
    return 'MaterialDetailRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MaterialDetailRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [_i12.MaterialsScreen]
class MaterialsRoute extends _i28.PageRouteInfo<void> {
  const MaterialsRoute({List<_i28.PageRouteInfo>? children})
    : super(MaterialsRoute.name, initialChildren: children);

  static const String name = 'MaterialsRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i12.MaterialsScreen();
    },
  );
}

/// generated route for
/// [_i12.MaterialsView]
class MaterialsView extends _i28.PageRouteInfo<void> {
  const MaterialsView({List<_i28.PageRouteInfo>? children})
    : super(MaterialsView.name, initialChildren: children);

  static const String name = 'MaterialsView';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i12.MaterialsView();
    },
  );
}

/// generated route for
/// [_i13.NotificationsScreen]
class NotificationsRoute extends _i28.PageRouteInfo<void> {
  const NotificationsRoute({List<_i28.PageRouteInfo>? children})
    : super(NotificationsRoute.name, initialChildren: children);

  static const String name = 'NotificationsRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i13.NotificationsScreen();
    },
  );
}

/// generated route for
/// [_i14.OnboardingScreen]
class OnboardingRoute extends _i28.PageRouteInfo<void> {
  const OnboardingRoute({List<_i28.PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i14.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i15.PlayerScreen]
class PlayerRoute extends _i28.PageRouteInfo<PlayerRouteArgs> {
  PlayerRoute({
    _i29.Key? key,
    required _i31.VideoModel videoModel,
    required String teacherName,
    required bool myLeason,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         PlayerRoute.name,
         args: PlayerRouteArgs(
           key: key,
           videoModel: videoModel,
           teacherName: teacherName,
           myLeason: myLeason,
         ),
         initialChildren: children,
       );

  static const String name = 'PlayerRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlayerRouteArgs>();
      return _i15.PlayerScreen(
        key: args.key,
        videoModel: args.videoModel,
        teacherName: args.teacherName,
        myLeason: args.myLeason,
      );
    },
  );
}

class PlayerRouteArgs {
  const PlayerRouteArgs({
    this.key,
    required this.videoModel,
    required this.teacherName,
    required this.myLeason,
  });

  final _i29.Key? key;

  final _i31.VideoModel videoModel;

  final String teacherName;

  final bool myLeason;

  @override
  String toString() {
    return 'PlayerRouteArgs{key: $key, videoModel: $videoModel, teacherName: $teacherName, myLeason: $myLeason}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PlayerRouteArgs) return false;
    return key == other.key &&
        videoModel == other.videoModel &&
        teacherName == other.teacherName &&
        myLeason == other.myLeason;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      videoModel.hashCode ^
      teacherName.hashCode ^
      myLeason.hashCode;
}

/// generated route for
/// [_i16.ProfileScreen]
class ProfileRoute extends _i28.PageRouteInfo<void> {
  const ProfileRoute({List<_i28.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i16.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i17.QuestionResponseResponseScreen]
class QuestionResponseResponseRoute extends _i28.PageRouteInfo<void> {
  const QuestionResponseResponseRoute({List<_i28.PageRouteInfo>? children})
    : super(QuestionResponseResponseRoute.name, initialChildren: children);

  static const String name = 'QuestionResponseResponseRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i17.QuestionResponseResponseScreen();
    },
  );
}

/// generated route for
/// [_i18.QuestionResponseScreen]
class QuestionResponseRoute extends _i28.PageRouteInfo<void> {
  const QuestionResponseRoute({List<_i28.PageRouteInfo>? children})
    : super(QuestionResponseRoute.name, initialChildren: children);

  static const String name = 'QuestionResponseRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i18.QuestionResponseScreen();
    },
  );
}

/// generated route for
/// [_i19.QuizScreen]
class QuizRoute extends _i28.PageRouteInfo<void> {
  const QuizRoute({List<_i28.PageRouteInfo>? children})
    : super(QuizRoute.name, initialChildren: children);

  static const String name = 'QuizRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i19.QuizScreen();
    },
  );
}

/// generated route for
/// [_i20.ResetPasswordScreen]
class ResetPasswordRoute extends _i28.PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    _i29.Key? key,
    required _i30.AuthenticationBloc authenticationBloc,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         ResetPasswordRoute.name,
         args: ResetPasswordRouteArgs(
           key: key,
           authenticationBloc: authenticationBloc,
         ),
         initialChildren: children,
       );

  static const String name = 'ResetPasswordRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResetPasswordRouteArgs>();
      return _i20.ResetPasswordScreen(
        key: args.key,
        authenticationBloc: args.authenticationBloc,
      );
    },
  );
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({this.key, required this.authenticationBloc});

  final _i29.Key? key;

  final _i30.AuthenticationBloc authenticationBloc;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, authenticationBloc: $authenticationBloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ResetPasswordRouteArgs) return false;
    return key == other.key && authenticationBloc == other.authenticationBloc;
  }

  @override
  int get hashCode => key.hashCode ^ authenticationBloc.hashCode;
}

/// generated route for
/// [_i21.SavedItemsScreen]
class SavedItemsRoute extends _i28.PageRouteInfo<void> {
  const SavedItemsRoute({List<_i28.PageRouteInfo>? children})
    : super(SavedItemsRoute.name, initialChildren: children);

  static const String name = 'SavedItemsRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i21.SavedItemsScreen();
    },
  );
}

/// generated route for
/// [_i22.SettingsScreen]
class SettingsRoute extends _i28.PageRouteInfo<void> {
  const SettingsRoute({List<_i28.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i22.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i23.SignScreen]
class SignRoute extends _i28.PageRouteInfo<void> {
  const SignRoute({List<_i28.PageRouteInfo>? children})
    : super(SignRoute.name, initialChildren: children);

  static const String name = 'SignRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i23.SignScreen();
    },
  );
}

/// generated route for
/// [_i24.SplashScreen]
class SplashRoute extends _i28.PageRouteInfo<void> {
  const SplashRoute({List<_i28.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i24.SplashScreen();
    },
  );
}

/// generated route for
/// [_i25.TeacherDetailScreen]
class TeacherDetailRoute extends _i28.PageRouteInfo<void> {
  const TeacherDetailRoute({List<_i28.PageRouteInfo>? children})
    : super(TeacherDetailRoute.name, initialChildren: children);

  static const String name = 'TeacherDetailRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i25.TeacherDetailScreen();
    },
  );
}

/// generated route for
/// [_i26.TeachersScreen]
class TeachersRoute extends _i28.PageRouteInfo<void> {
  const TeachersRoute({List<_i28.PageRouteInfo>? children})
    : super(TeachersRoute.name, initialChildren: children);

  static const String name = 'TeachersRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i26.TeachersScreen();
    },
  );
}

/// generated route for
/// [_i27.VerificationCodeScreen]
class VerificationCodeRoute
    extends _i28.PageRouteInfo<VerificationCodeRouteArgs> {
  VerificationCodeRoute({
    _i29.Key? key,
    required _i30.AuthenticationBloc authenticationBloc,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         VerificationCodeRoute.name,
         args: VerificationCodeRouteArgs(
           key: key,
           authenticationBloc: authenticationBloc,
         ),
         initialChildren: children,
       );

  static const String name = 'VerificationCodeRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerificationCodeRouteArgs>();
      return _i27.VerificationCodeScreen(
        key: args.key,
        authenticationBloc: args.authenticationBloc,
      );
    },
  );
}

class VerificationCodeRouteArgs {
  const VerificationCodeRouteArgs({this.key, required this.authenticationBloc});

  final _i29.Key? key;

  final _i30.AuthenticationBloc authenticationBloc;

  @override
  String toString() {
    return 'VerificationCodeRouteArgs{key: $key, authenticationBloc: $authenticationBloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! VerificationCodeRouteArgs) return false;
    return key == other.key && authenticationBloc == other.authenticationBloc;
  }

  @override
  int get hashCode => key.hashCode ^ authenticationBloc.hashCode;
}
