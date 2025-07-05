import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rpod_auth/features/auth/data/data_sources/auth_data_source_impl.dart';
import 'package:rpod_auth/features/auth/domain/data_sources/auth_data_source.dart';

final GetIt sl = GetIt.instance;

void injection() {
  sl.registerLazySingleton<Dio>(Dio.new);
  sl.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl(sl()));
}
