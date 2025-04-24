import 'package:chat_me_mobile/features/chat/data/bloc/chat_bloc.dart';
import 'package:chat_me_mobile/features/chat/domain/vo/Message.vo.dart';
import 'package:injectable/injectable.dart';

@injectable
class SendMessageUsecase {
  SendMessageUsecase({
    required this.chatBloc,
  });

  final ChatBloc chatBloc;

  void execute({
    String? chatId,
    String? messagesId,
    required String uid1,
    required String uid2,
    required MessageVo message,
  }) {
    chatBloc.add(ChatEvent.sendMessage(
      chatId: chatId,
      messagesId: messagesId,
      uid1: uid1,
      uid2: uid2,
      message: message,
    ));
  }
}
