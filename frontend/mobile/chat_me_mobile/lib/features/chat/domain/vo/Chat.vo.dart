import 'package:chat_me_mobile/core/logic/guard.dart';
import 'package:chat_me_mobile/core/logic/result.dart';
import 'package:chat_me_mobile/features/chat/data/dto/Chat.dto.dart';
import 'package:chat_me_mobile/features/chat/data/dto/Message.dto.dart';
import 'package:chat_me_mobile/features/chat/domain/vo/Message.vo.dart';
import 'package:equatable/equatable.dart';

class ChatVo extends Equatable {
  const ChatVo({
    this.id,
    this.participants,
    this.messages,
  });

  final String? id;
  final List<String>? participants;
  // final String? messages;
  final List<MessageVo>? messages;

  @override
  List<Object?> get props => <dynamic>[
        id,
        participants,
        messages,
      ];

  static Result<ChatVo> create(ChatDto dto) {
    final List<MessageVo> messages = <MessageVo>[];

    if (dto.messages != null) {
      for (final MessageDto messagesValueDto in dto.messages!) {
        final Result<MessageVo> voOrError = MessageVo.create(messagesValueDto);

        if (voOrError.isFailure) {
          return Result<ChatVo>.fail(error: voOrError.getError);
        }

        messages.add(voOrError.getValue);
      }
    }

    final GuardResult guardResult = Guard.combine(<GuardResult>[
      Guard.againstNullOrUndefined(dto.id, 'Chat Id'),
    ]);

    if (!guardResult.succeeded) {
      return Result<ChatVo>.fail(error: guardResult.message);
    } else {
      return Result<ChatVo>.ok(
          data: ChatVo(
        id: dto.id,
        participants: dto.participants,
        messages: messages,
      ));
    }
  }
}
