import 'package:chat_me_mobile/features/chat/data/bloc/chat_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetChatsUsecase {
  GetChatsUsecase({
    required this.chatBloc,
  });

  final ChatBloc chatBloc;

  void execute(String uid) {
    chatBloc.add(ChatEvent.getChats(uid));
  }
}
