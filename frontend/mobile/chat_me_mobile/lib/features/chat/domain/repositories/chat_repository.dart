import 'package:chat_me_mobile/core/logic/result.dart';
import 'package:chat_me_mobile/features/chat/domain/vo/Chat.vo.dart';
import 'package:chat_me_mobile/features/chat/domain/vo/Message.vo.dart';
import 'package:dartz/dartz.dart';

abstract class ChatRepository {
  Stream<Result<List<ChatVo>>> getChats({String? uid});
  Stream<Result<List<MessageVo>>> getMessages(String chatId);
  Future<Result<String?>> sendMessage(
    String? chatId,
    String? messagesId,
    String? uid1,
    String? uid2,
    MessageVo messageVo,
  );
  Future<Result<Unit>> deleteMessage(
    String? chatId,
  );
  Future<Result<String?>> isExistingChat(String? uid1, String? uid2);
}
