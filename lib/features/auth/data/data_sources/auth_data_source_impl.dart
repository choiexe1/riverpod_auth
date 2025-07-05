import 'package:dio/dio.dart';
import 'package:rpod_auth/core/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_data_source_impl.g.dart';

@RestApi(baseUrl: authApiBaseUrl)
abstract class AuthDataSourceImpl {
  factory AuthDataSourceImpl(Dio dio, {String? baseUrl}) = _AuthDataSourceImpl;

  @POST('/login')
  Future<String> login({String username, String password});
}
