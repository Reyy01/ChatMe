class RegisterUserDto {
  RegisterUserDto({
    required this.name,
    required this.email,
    required this.password,
  });

  final String name;
  final String email;
  final String password;

  Map<String, dynamic> toPersistence() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
    };
  }
}
