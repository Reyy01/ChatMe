import 'package:chat_me_mobile/core/logic/guard.dart';
import 'package:chat_me_mobile/core/logic/result.dart';
import 'package:chat_me_mobile/features/chat/data/dto/Message.dto.dart';
import 'package:equatable/equatable.dart';

class MessageVo extends Equatable {
  const MessageVo({
    this.senderId,
    this.content,
    this.sentAt,
  });

  final String? senderId;
  final String? content;
  final String? sentAt;

  @override
  List<Object?> get props => <dynamic>[
        senderId,
        content,
        sentAt,
      ];

  static Result<MessageVo> create(MessageDto dto) {
    final GuardResult guardResult = Guard.combine(<GuardResult>[
      Guard.againstNullOrUndefined(dto.senderId, 'Sender Id'),
    ]);

    if (!guardResult.succeeded) {
      return Result<MessageVo>.fail(error: guardResult.message);
    } else {
      return Result<MessageVo>.ok(
          data: MessageVo(
        senderId: dto.senderId,
        content: dto.content,
        sentAt: dto.sentAt,
      ));
    }
  }
}
