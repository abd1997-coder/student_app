import 'package:get_it/get_it.dart';
import 'package:student_app/core/pruches/bloc/pruches_bloc.dart';
import 'package:student_app/core/pruches/data/pruches_repository.dart';
import 'package:student_app/features/home/bloc/home_bloc.dart';
import 'package:student_app/features/home/data/home_repository.dart';
import 'package:student_app/features/materials/bloc/material_bloc.dart';
import 'package:student_app/features/materials/data/materials_repository.dart';
import 'package:student_app/features/profile/bloc/profile_bloc.dart';
import 'package:student_app/features/profile/data/profile_repository.dart';
import '../../../features/auth/bloc/authentication_bloc.dart';
import '../../../features/auth/data/auth_repository.dart';
import '../../core.dart';

GetIt getIt = GetIt.instance;

Future<void> serviceLocator() async {
  final SharedPreferences preferences = await SharedPreferences.getInstance();
  initPrefManager(preferences);

  getIt.registerLazySingleton(() => UserLocalDataSource());
  getIt.registerSingleton(AppManagerCubit(localDataSource: getIt()));
  getIt.registerLazySingleton<PermissionManager>(() => PermissionManagerImpl());
  getIt.registerLazySingleton<NotificationManager>(
    () => NotificationManagerImpl(),
  );
  getIt.registerSingleton<AppRouter>(AppRouter());

  getIt.registerSingleton<DioClient>(DioClient());

  repositories();

  cubits();
}

void initPrefManager(SharedPreferences preferences) =>
    getIt.registerLazySingleton<PreferenceManager>(
      () => PreferenceManagerImpl(preferences),
    );

void repositories() {
  // Auth Feature
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository(getIt()));
  getIt.registerLazySingleton<HomeRepository>(() => HomeRepository(getIt()));
  getIt.registerLazySingleton<MaterialRepository>(
    () => MaterialRepository(getIt()),
  );
  getIt.registerLazySingleton<PruchesRepository>(
    () => PruchesRepository(getIt()),
  );
  getIt.registerLazySingleton<ProfileRepository>(
    () => ProfileRepository(getIt()),
  );
}

void cubits() {
  // Auth Feature
  getIt.registerFactory(() => AuthenticationBloc(getIt(), getIt()));
  getIt.registerFactory(() => HomeBloc(getIt()));
  getIt.registerFactory(() => MaterialDetailBloc(getIt()));
  getIt.registerFactory(() => PruchesBloc(getIt()));
  getIt.registerFactory(() => ProfileBloc(getIt()));
}
