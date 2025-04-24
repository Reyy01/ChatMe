import 'package:chat_me_mobile/core/logic/enums.dart';
import 'package:chat_me_mobile/core/logic/result.dart';
import 'package:chat_me_mobile/features/chat/domain/repositories/chat_repository.dart';
import 'package:chat_me_mobile/features/chat/domain/vo/Chat.vo.dart';
import 'package:chat_me_mobile/features/chat/domain/vo/Message.vo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@lazySingleton
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({
    required this.chatRepository,
  }) : super(ChatState.initial()) {
    on<_GetChats>((_GetChats event, Emitter<ChatState> emit) async {
      print('getting chats');
      emit(state.copyWith(stateStatus: StateStatus.loadingState));
      final Stream<Result<List<ChatVo>>> result =
          chatRepository.getChats(uid: event.uid);

      await for (Result<List<ChatVo>> result in result) {
        if (!isClosed) {
          if (!result.isSuccess) {
            emit(state.copyWith(
              stateStatus: StateStatus.errorState,
              errorMessage: result.getError,
            ));
            emit(state.copyWith(
              chats: <ChatVo>[],
              stateStatus: StateStatus.loadedState,
            ));
          } else {
            print('chats ${result.getValue}');
            emit(state.copyWith(
              stateStatus: StateStatus.loadedState,
              chats: result.getValue,
            ));
          }
        }
      }
    });

    on<_GetMessages>((_GetMessages event, Emitter<ChatState> emit) async {
      emit(state.copyWith(stateStatus: StateStatus.loadingState));
      final Stream<Result<List<MessageVo>>> result =
          chatRepository.getMessages(event.chatId);

      await for (Result<List<MessageVo>> result in result) {
        if (!isClosed) {
          if (!result.isSuccess) {
            emit(state.copyWith(
              stateStatus: StateStatus.errorState,
              errorMessage: result.getError,
            ));
            emit(state.copyWith(
              messages: <MessageVo>[],
              stateStatus: StateStatus.loadedState,
            ));
          } else {
            print('messages ${result.getValue}');
            emit(state.copyWith(
              stateStatus: StateStatus.loadedState,
              messages: result.getValue,
            ));
          }
        }
      }
    });

    on<_SendMessage>((_SendMessage event, Emitter<ChatState> emit) async {
      emit(state.copyWith(
        stateStatus: StateStatus.loadingState,
        currentChatId: null,
      ));
      final Result<String?> result = await chatRepository.sendMessage(
        event.chatId,
        event.messagesId,
        event.uid1,
        event.uid2,
        event.message,
      );

      if (!result.isSuccess) {
        emit(state.copyWith(
          stateStatus: StateStatus.errorState,
          errorMessage: result.getError,
        ));
        emit(state.copyWith(
          stateStatus: StateStatus.loadedState,
        ));
      } else {
        emit(state.copyWith(
          stateStatus: StateStatus.loadedState,
          currentChatId: result.getValue,
        ));
      }
    });

    on<_DeleteMessage>((_DeleteMessage event, Emitter<ChatState> emit) async {
      emit(state.copyWith(stateStatus: StateStatus.loadingState));
      final Result<Unit> result =
          await chatRepository.deleteMessage(event.chatId);

      if (!result.isSuccess) {
        emit(state.copyWith(
          stateStatus: StateStatus.errorState,
          errorMessage: result.getError,
        ));
        emit(state.copyWith(
          stateStatus: StateStatus.loadedState,
        ));
      } else {
        emit(state.copyWith(
          stateStatus: StateStatus.loadedState,
        ));
      }
    });

    on<_IsExistingChat>((_IsExistingChat event, Emitter<ChatState> emit) async {
      emit(state.copyWith(messageStatus: StateStatus.loadingState));
      final Result<String?> result =
          await chatRepository.isExistingChat(event.uid1, event.uid2);

      if (!result.isSuccess) {
        emit(state.copyWith(
          messageStatus: StateStatus.errorState,
          errorMessage: result.getError,
        ));
        emit(state.copyWith(
          messageStatus: StateStatus.loadedState,
        ));
      } else {
        emit(state.copyWith(
          messageStatus: StateStatus.loadedState,
          currentChatId: result.getValue,
        ));
      }
    });
  }

  final ChatRepository chatRepository;
}
