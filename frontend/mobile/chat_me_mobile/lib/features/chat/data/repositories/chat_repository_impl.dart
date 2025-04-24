import 'package:chat_me_mobile/core/logic/error_messages.dart';
import 'package:chat_me_mobile/core/logic/result.dart';
import 'package:chat_me_mobile/core/logic/server_exception.dart';
import 'package:chat_me_mobile/core/network/network_info.dart';
import 'package:chat_me_mobile/features/chat/data/datasources/chat_remote_datasource.dart';
import 'package:chat_me_mobile/features/chat/data/dto/Chat.dto.dart';
import 'package:chat_me_mobile/features/chat/data/dto/Message.dto.dart';
import 'package:chat_me_mobile/features/chat/domain/repositories/chat_repository.dart';
import 'package:chat_me_mobile/features/chat/domain/vo/Chat.vo.dart';
import 'package:chat_me_mobile/features/chat/domain/vo/Message.vo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.prod)
@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl({
    required this.networkInfo,
    required this.chatRemoteDatasource,
  });

  final NetworkInfo networkInfo;
  final ChatRemoteDatasource chatRemoteDatasource;

  @override
  Stream<Result<List<ChatVo>>> getChats({String? uid}) {
    final Stream<List<dynamic>> chats = chatRemoteDatasource.getChats(uid);

    return chats.map((List<dynamic> events) {
      try {
        return Result<List<ChatVo>>.ok(
          data: events
              .map((dynamic event) => ChatVo.create(event as ChatDto).getValue)
              .toList(),
        );
      } catch (e) {
        return Result<List<ChatVo>>.fail(error: e.toString());
      }
    });
  }

  @override
  Stream<Result<List<MessageVo>>> getMessages(String chatId) {
    final Stream<List<dynamic>> messages =
        chatRemoteDatasource.getMessages(chatId);
    return messages.map((List<dynamic> events) {
      try {
        return Result<List<MessageVo>>.ok(
          data: events
              .map((dynamic event) =>
                  MessageVo.create(event as MessageDto).getValue)
              .toList(),
        );
      } catch (e) {
        return Result<List<MessageVo>>.fail(error: e.toString());
      }
    });
  }

  @override
  Future<Result<String?>> sendMessage(
    String? chatId,
    String? messagesId,
    String? user1,
    String? user2,
    MessageVo messageVo,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final String? chat = await chatRemoteDatasource.sendMessage(
          chatId,
          messagesId,
          user1,
          user2,
          MessageDto.fromDomain(messageVo),
        );
        return Result<String?>.ok(data: chat);
      } on ServerException catch (e) {
        return Result<String?>.fail(error: e.message);
      }
    } else {
      return const Result<String?>.fail(error: ERR_NO_INTERNET_CONNECTION);
    }
  }

  @override
  Future<Result<Unit>> deleteMessage(String? chatId) async {
    if (await networkInfo.isConnected) {
      try {
        await chatRemoteDatasource.deleteMessage(chatId);
        return const Result<Unit>.ok(data: unit);
      } on ServerException catch (e) {
        return Result<Unit>.fail(error: e.message);
      }
    } else {
      return const Result<Unit>.fail(error: ERR_NO_INTERNET_CONNECTION);
    }
  }

  @override
  Future<Result<String?>> isExistingChat(String? uid1, String? uid2) async {
    if (await networkInfo.isConnected) {
      try {
        final String? chatId =
            await chatRemoteDatasource.isExistingChat(uid1, uid2);
        return Result<String?>.ok(data: chatId);
      } on ServerException catch (e) {
        return Result<String?>.fail(error: e.message);
      }
    } else {
      return const Result<String?>.fail(error: ERR_NO_INTERNET_CONNECTION);
    }
  }
}
