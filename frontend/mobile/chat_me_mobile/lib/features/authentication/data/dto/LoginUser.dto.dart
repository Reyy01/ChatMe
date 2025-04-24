class LoginUserDto {
  LoginUserDto({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  Map<String, dynamic> toPersistence() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }
}
