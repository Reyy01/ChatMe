import 'package:chat_me_mobile/features/chat/domain/vo/Message.vo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Message.dto.freezed.dart';
part 'Message.dto.g.dart';

@freezed
class MessageDto with _$MessageDto {
  const factory MessageDto({
    String? senderId,
    String? content,
    String? sentAt,
  }) = _MessageDto;

  const MessageDto._();

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  factory MessageDto.fromDomain(MessageVo vo) {
    return MessageDto(
      senderId: vo.senderId,
      content: vo.content,
      sentAt: vo.sentAt,
    );
  }

  Map<String, dynamic> toPersistence() {
    return <String, dynamic>{
      'senderId': senderId,
      'content': content,
      'sentAt': sentAt,
    };
  }
}
