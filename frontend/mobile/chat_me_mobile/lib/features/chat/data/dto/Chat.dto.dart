import 'package:chat_me_mobile/features/chat/data/dto/Message.dto.dart';
import 'package:chat_me_mobile/features/chat/domain/vo/Chat.vo.dart';
import 'package:chat_me_mobile/features/chat/domain/vo/Message.vo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Chat.dto.freezed.dart';
part 'Chat.dto.g.dart';

@freezed
class ChatDto with _$ChatDto {
  const factory ChatDto({
    String? id,
    List<String>? participants,
    List<MessageDto>? messages,
  }) = _ChatDto;

  const ChatDto._();

  factory ChatDto.fromJson(Map<String, dynamic> json) =>
      _$ChatDtoFromJson(json);

  factory ChatDto.fromDomain(ChatVo vo) {
    return ChatDto(
      id: vo.id,
      participants: vo.participants,
      messages:
          vo.messages?.map((MessageVo x) => MessageDto.fromDomain(x)).toList(),
    );
  }

  Map<String, dynamic> toPersistence() {
    return <String, dynamic>{
      'id': id,
      'participants': participants,
      'messages': messages,
    };
  }
}
