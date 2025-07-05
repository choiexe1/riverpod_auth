class UserEntity {
  const UserEntity({required this.username, required this.password});

  final String username;
  final String password;

  @override
  toString() => 'UserEntity(username: $username, password: $password)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UserEntity &&
        runtimeType == other.runtimeType &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode => Object.hash(username, password);

  UserEntity copyWith({String? username, String? password}) {
    return UserEntity(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }
}
