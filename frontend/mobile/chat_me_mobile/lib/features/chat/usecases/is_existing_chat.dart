import 'package:chat_me_mobile/features/chat/data/bloc/chat_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class IsExistingChatUsecase {
  IsExistingChatUsecase({
    required this.chatBloc,
  });

  final ChatBloc chatBloc;

  void execute({
    required String uid1,
    required String uid2,
  }) {
    chatBloc.add(ChatEvent.isExistingChat(
      uid1: uid1,
      uid2: uid2,
    ));
  }
}
