import 'package:chat_me_mobile/features/authentication/data/bloc/auth_bloc.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/RegisterUser.dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUserUsecase {
  RegisterUserUsecase({required this.authBloc});

  final AuthBloc authBloc;

  void execute(RegisterUserDto req) {
    authBloc.add(AuthEvent.registerUser(registerUserDto: req));
  }
}
