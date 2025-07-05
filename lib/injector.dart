import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rpod_auth/features/auth/data/data_sources/remote/remote_auth_data_source.dart';

final GetIt sl = GetIt.instance;

void injection() {
  sl.registerLazySingleton<Dio>(() {
    final dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true));
    return dio;
  });
  sl.registerLazySingleton<RemoteAuthDataSource>(
    () => RemoteAuthDataSource(sl()),
  );
}
