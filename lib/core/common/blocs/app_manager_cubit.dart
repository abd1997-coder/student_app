import 'package:flutter/material.dart';

import '../../../features/auth/data/data.dart';
import '../../core.dart';
import 'package:equatable/equatable.dart';
part 'app_manager_state.dart';

class AppManagerCubit extends Cubit<AppManagerState> {
  AppManagerCubit({required UserLocalDataSource localDataSource})
    : _localDataSource = localDataSource,
      super(AppManagerState(themeData: ThemeData()));

  final UserLocalDataSource _localDataSource;
  UserData? userEntity;

  void loadData() {
    userEntity = _localDataSource.getUser();
  }

  Future<void> storeUser(UserData user) async {
    await Future.wait(<Future<void>>[_localDataSource.storeUser(user)]);
    emit(state.copyWith(appManagerStatus: AppManagerStatus.signIn));
  }

  Future<void> init() async {
    loadData();
  }

  Future<void> deleteUser() async {
    userEntity = null;
    getIt<DioClient>().dio.options.headers['Authorization'] = null;
    await _localDataSource.logout();
  }

  Future<void> logOut() async {
    userEntity = null;
    await _localDataSource.logout();
    await getIt<AppRouter>().replaceAll(<PageRouteInfo>[const SplashRoute()]);
  }

  void changeTextTheme(BoxConstraints constraints) {
    DisplayType displayType = DisplayType.desktop;
    final double maxWidth = constraints.maxWidth;

    switch (maxWidth) {
      case <= StandardBreakPoints.mobile:
        displayType = DisplayType.mobile;
      case <= StandardBreakPoints.tablet:
        displayType = DisplayType.tablet;
      default:
        displayType = DisplayType.desktop;
    }
    emit(
      state.copyWith(
        themeData: ThemeManager.themeData(displayType.textTheme),
        appManagerStatus: AppManagerStatus.themeDataChanging,
      ),
    );
  }
}
