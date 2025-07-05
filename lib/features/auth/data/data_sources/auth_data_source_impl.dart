import 'package:dio/dio.dart';
import 'package:rpod_auth/core/constants.dart';
import 'package:rpod_auth/features/auth/domain/data_sources/auth_data_source.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_data_source_impl.g.dart';

@RestApi(baseUrl: authApiBaseUrl)
abstract class AuthDataSourceImpl implements AuthDataSource {
  factory AuthDataSourceImpl(Dio dio, {String? baseUrl}) = _AuthDataSourceImpl;
}
