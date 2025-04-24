import 'package:chat_me_mobile/features/user/data/bloc/user_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUsersUsecase {
  GetUsersUsecase({required this.userBloc});

  final UserBloc userBloc;

  void execute() {
    userBloc.add(const UserEvent.getUsers());
  }
}
