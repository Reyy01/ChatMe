import 'package:chat_me_mobile/features/authentication/data/bloc/auth_bloc.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/LoginUser.dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUserUsecase {
  LoginUserUsecase({required this.authBloc});

  final AuthBloc authBloc;

  void execute(LoginUserDto req) {
    authBloc.add(AuthEvent.loginUser(loginUserDto: req));
  }
}
