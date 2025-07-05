abstract interface class AuthDataSource {
  Future<String> login({String username, String password});
}
