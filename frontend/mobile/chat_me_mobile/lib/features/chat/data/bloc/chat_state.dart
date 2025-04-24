part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    String? errorMessage,
    required StateStatus stateStatus,
    required StateStatus messageStatus,
    required List<ChatVo> chats,
    required List<MessageVo> messages,
    String? currentChatId,
  }) = _ChatState;

  factory ChatState.initial() => const ChatState(
        stateStatus: StateStatus.initialState,
        messageStatus: StateStatus.initialState,
        chats: <ChatVo>[],
        messages: <MessageVo>[],
      );
}
