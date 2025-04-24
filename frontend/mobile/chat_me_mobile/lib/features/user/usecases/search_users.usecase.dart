import 'package:chat_me_mobile/features/user/data/bloc/user_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchUsersUsecase {
  SearchUsersUsecase({required this.userBloc});

  final UserBloc userBloc;

  void execute(String query) {
    userBloc.add(UserEvent.searchUser(query: query));
  }
}
