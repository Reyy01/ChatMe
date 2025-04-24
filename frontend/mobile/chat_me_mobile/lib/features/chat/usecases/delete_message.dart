import 'package:chat_me_mobile/features/chat/data/bloc/chat_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteMessageUsecase {
  DeleteMessageUsecase({
    required this.chatBloc,
  });

  final ChatBloc chatBloc;

  void execute(String chatId) {
    chatBloc.add(ChatEvent.deleteMessage(chatId));
  }
}
