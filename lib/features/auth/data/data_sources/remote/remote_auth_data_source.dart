import 'package:dio/dio.dart';
import 'package:rpod_auth/core/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rpod_auth/features/auth/data/models/auth_response.dart';

part 'remote_auth_data_source.g.dart';

@RestApi(baseUrl: authApiBaseUrl)
abstract class RemoteAuthDataSource {
  factory RemoteAuthDataSource(Dio dio, {String? baseUrl}) =
      _RemoteAuthDataSource;

  @POST('/login')
  Future<AuthResponse> login(@Body() Map<String, dynamic> body);
}
