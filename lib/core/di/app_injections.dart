import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:united_end2end/core/bloc/app_bloc_observer.dart';
import 'package:united_end2end/core/network/client/api_client.dart';
import 'package:united_end2end/features/auth/data/remote/api/login_api.dart';
import 'package:united_end2end/features/auth/data/repository/login_repository_impl.dart';
import 'package:united_end2end/features/auth/domain/repository/login_repository.dart';
import 'package:united_end2end/features/auth/presentation/bloc/login_bloc.dart';
import 'package:united_end2end/features/dashboard/data/remote/api/dashboard_api.dart';
import 'package:united_end2end/features/dashboard/data/repository/dashboard_repository_impl.dart';
import 'package:united_end2end/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:united_end2end/features/dashboard/presentation/home/bloc/dashboard_bloc.dart';
import 'package:united_end2end/features/profile/data/remote/api/user_api.dart';
import 'package:united_end2end/features/profile/data/repository/user_repository_impl.dart';
import 'package:united_end2end/features/profile/domain/repository/user_repository.dart';
import 'package:united_end2end/features/profile/presentation/bloc/user_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:united_end2end/config/routes/app_router.dart';
import 'package:united_end2end/core/services/shared_prefs.dart';
import 'package:united_end2end/core/services/shared_prefs_helper.dart';

final getIt = GetIt.instance;

Future<void> initAppInjections() async {
  await initSharedPrefsInjections();
  AppRouter.instance;
  await AppRouter.init();
}

Future<void> initInjections() async {
  /// Network
  getIt.registerLazySingleton<Dio>(() => provideDio());
  getIt.registerLazySingleton<ApiClient>(() => ApiClient(getIt<Dio>()));
  await initBlocs();
}

Future<void> initBlocs() async {
  Bloc.observer = AppBlocObserver();

  /// Featues
  // Login
  getIt.registerLazySingleton<LoginApi>(() => LoginApi(getIt<ApiClient>()));
  getIt.registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(getIt<LoginApi>(), getIt<SharedPrefsHelper>()));
  getIt.registerLazySingleton<LoginBloc>(() => LoginBloc(getIt<LoginRepository>()));

  // Dashboard
  getIt.registerLazySingleton<DashboardApi>(() => DashboardApi(getIt<ApiClient>()));
  getIt.registerLazySingleton<DashboardRepository>(
      () => DashboardRepositoryImpl(getIt<DashboardApi>()));
  getIt.registerLazySingleton<DashboardBloc>(() => DashboardBloc(getIt<DashboardRepository>()));

  // User
  getIt.registerLazySingleton<UserApi>(() => UserApi(getIt<ApiClient>()));
  getIt.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(getIt<UserApi>()));
  getIt.registerLazySingleton<UserBloc>(() => UserBloc(getIt<UserRepository>()));
}

Dio provideDio() => Dio();

initSharedPrefsInjections() async {
  getIt.registerSingletonAsync<SharedPrefs>(() async {
    final sharedPrefs = SharedPrefs();
    await sharedPrefs.init();
    return sharedPrefs;
  });
  await getIt.isReady<SharedPrefs>();

  getIt.registerLazySingleton<SharedPrefsHelper>(() => SharedPrefsHelper(getIt<SharedPrefs>()));
}

FutureOr<void> resetBlocs() async {
  getIt.resetLazySingleton<LoginBloc>();
  getIt.resetLazySingleton<DashboardBloc>();
  getIt.resetLazySingleton<UserBloc>();
}
