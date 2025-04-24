// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Chat.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatDtoImpl _$$ChatDtoImplFromJson(Map<String, dynamic> json) =>
    _$ChatDtoImpl(
      id: json['id'] as String?,
      participants: (json['participants'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatDtoImplToJson(_$ChatDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'participants': instance.participants,
      'messages': instance.messages,
    };
