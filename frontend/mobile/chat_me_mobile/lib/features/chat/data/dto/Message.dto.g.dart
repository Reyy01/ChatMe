// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Message.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageDtoImpl _$$MessageDtoImplFromJson(Map<String, dynamic> json) =>
    _$MessageDtoImpl(
      senderId: json['senderId'] as String?,
      content: json['content'] as String?,
      sentAt: json['sentAt'] as String?,
    );

Map<String, dynamic> _$$MessageDtoImplToJson(_$MessageDtoImpl instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'content': instance.content,
      'sentAt': instance.sentAt,
    };
