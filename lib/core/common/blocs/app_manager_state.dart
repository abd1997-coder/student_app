part of 'app_manager_cubit.dart';

enum AppManagerStatus {
  themeDataChanging,
  signOut,
  signIn,
}

class AppManagerState extends Equatable {
  const AppManagerState({
    this.appManagerStatus,
    this.themeData,
  });

  final AppManagerStatus? appManagerStatus;
  final ThemeData? themeData;

  AppManagerState copyWith({
    ThemeData? themeData,
    AppManagerStatus? appManagerStatus,
  }) {
    return AppManagerState(
      themeData: themeData ?? this.themeData,
      appManagerStatus: appManagerStatus ?? this.appManagerStatus,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        themeData,
        appManagerStatus,
      ];
}
