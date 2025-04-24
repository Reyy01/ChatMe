part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.getChats(String uid) = _GetChats;

  const factory ChatEvent.getMessages(String chatId) = _GetMessages;

  const factory ChatEvent.sendMessage({
    String? chatId,
    String? messagesId,
    required String uid1,
    required String uid2,
    required MessageVo message,
  }) = _SendMessage;

  const factory ChatEvent.deleteMessage(String chatId) = _DeleteMessage;

  const factory ChatEvent.isExistingChat({
    required String uid1,
    required String uid2,
  }) = _IsExistingChat;
}
