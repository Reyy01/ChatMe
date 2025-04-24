// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getChats,
    required TResult Function(String chatId) getMessages,
    required TResult Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)
        sendMessage,
    required TResult Function(String chatId) deleteMessage,
    required TResult Function(String uid1, String uid2) isExistingChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getChats,
    TResult? Function(String chatId)? getMessages,
    TResult? Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)?
        sendMessage,
    TResult? Function(String chatId)? deleteMessage,
    TResult? Function(String uid1, String uid2)? isExistingChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getChats,
    TResult Function(String chatId)? getMessages,
    TResult Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)?
        sendMessage,
    TResult Function(String chatId)? deleteMessage,
    TResult Function(String uid1, String uid2)? isExistingChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_IsExistingChat value) isExistingChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_IsExistingChat value)? isExistingChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_IsExistingChat value)? isExistingChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetChatsImplCopyWith<$Res> {
  factory _$$GetChatsImplCopyWith(
          _$GetChatsImpl value, $Res Function(_$GetChatsImpl) then) =
      __$$GetChatsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$GetChatsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetChatsImpl>
    implements _$$GetChatsImplCopyWith<$Res> {
  __$$GetChatsImplCopyWithImpl(
      _$GetChatsImpl _value, $Res Function(_$GetChatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$GetChatsImpl(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetChatsImpl implements _GetChats {
  const _$GetChatsImpl(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'ChatEvent.getChats(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatsImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatsImplCopyWith<_$GetChatsImpl> get copyWith =>
      __$$GetChatsImplCopyWithImpl<_$GetChatsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getChats,
    required TResult Function(String chatId) getMessages,
    required TResult Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)
        sendMessage,
    required TResult Function(String chatId) deleteMessage,
    required TResult Function(String uid1, String uid2) isExistingChat,
  }) {
    return getChats(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getChats,
    TResult? Function(String chatId)? getMessages,
    TResult? Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)?
        sendMessage,
    TResult? Function(String chatId)? deleteMessage,
    TResult? Function(String uid1, String uid2)? isExistingChat,
  }) {
    return getChats?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getChats,
    TResult Function(String chatId)? getMessages,
    TResult Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)?
        sendMessage,
    TResult Function(String chatId)? deleteMessage,
    TResult Function(String uid1, String uid2)? isExistingChat,
    required TResult orElse(),
  }) {
    if (getChats != null) {
      return getChats(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_IsExistingChat value) isExistingChat,
  }) {
    return getChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_IsExistingChat value)? isExistingChat,
  }) {
    return getChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_IsExistingChat value)? isExistingChat,
    required TResult orElse(),
  }) {
    if (getChats != null) {
      return getChats(this);
    }
    return orElse();
  }
}

abstract class _GetChats implements ChatEvent {
  const factory _GetChats(final String uid) = _$GetChatsImpl;

  String get uid;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatsImplCopyWith<_$GetChatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMessagesImplCopyWith<$Res> {
  factory _$$GetMessagesImplCopyWith(
          _$GetMessagesImpl value, $Res Function(_$GetMessagesImpl) then) =
      __$$GetMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$GetMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetMessagesImpl>
    implements _$$GetMessagesImplCopyWith<$Res> {
  __$$GetMessagesImplCopyWithImpl(
      _$GetMessagesImpl _value, $Res Function(_$GetMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$GetMessagesImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMessagesImpl implements _GetMessages {
  const _$GetMessagesImpl(this.chatId);

  @override
  final String chatId;

  @override
  String toString() {
    return 'ChatEvent.getMessages(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      __$$GetMessagesImplCopyWithImpl<_$GetMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getChats,
    required TResult Function(String chatId) getMessages,
    required TResult Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)
        sendMessage,
    required TResult Function(String chatId) deleteMessage,
    required TResult Function(String uid1, String uid2) isExistingChat,
  }) {
    return getMessages(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getChats,
    TResult? Function(String chatId)? getMessages,
    TResult? Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)?
        sendMessage,
    TResult? Function(String chatId)? deleteMessage,
    TResult? Function(String uid1, String uid2)? isExistingChat,
  }) {
    return getMessages?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getChats,
    TResult Function(String chatId)? getMessages,
    TResult Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)?
        sendMessage,
    TResult Function(String chatId)? deleteMessage,
    TResult Function(String uid1, String uid2)? isExistingChat,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_IsExistingChat value) isExistingChat,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_IsExistingChat value)? isExistingChat,
  }) {
    return getMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_IsExistingChat value)? isExistingChat,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class _GetMessages implements ChatEvent {
  const factory _GetMessages(final String chatId) = _$GetMessagesImpl;

  String get chatId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? chatId,
      String? messagesId,
      String uid1,
      String uid2,
      MessageVo message});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? messagesId = freezed,
    Object? uid1 = null,
    Object? uid2 = null,
    Object? message = null,
  }) {
    return _then(_$SendMessageImpl(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      messagesId: freezed == messagesId
          ? _value.messagesId
          : messagesId // ignore: cast_nullable_to_non_nullable
              as String?,
      uid1: null == uid1
          ? _value.uid1
          : uid1 // ignore: cast_nullable_to_non_nullable
              as String,
      uid2: null == uid2
          ? _value.uid2
          : uid2 // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageVo,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(
      {this.chatId,
      this.messagesId,
      required this.uid1,
      required this.uid2,
      required this.message});

  @override
  final String? chatId;
  @override
  final String? messagesId;
  @override
  final String uid1;
  @override
  final String uid2;
  @override
  final MessageVo message;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(chatId: $chatId, messagesId: $messagesId, uid1: $uid1, uid2: $uid2, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.messagesId, messagesId) ||
                other.messagesId == messagesId) &&
            (identical(other.uid1, uid1) || other.uid1 == uid1) &&
            (identical(other.uid2, uid2) || other.uid2 == uid2) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, chatId, messagesId, uid1, uid2, message);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getChats,
    required TResult Function(String chatId) getMessages,
    required TResult Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)
        sendMessage,
    required TResult Function(String chatId) deleteMessage,
    required TResult Function(String uid1, String uid2) isExistingChat,
  }) {
    return sendMessage(chatId, messagesId, uid1, uid2, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getChats,
    TResult? Function(String chatId)? getMessages,
    TResult? Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)?
        sendMessage,
    TResult? Function(String chatId)? deleteMessage,
    TResult? Function(String uid1, String uid2)? isExistingChat,
  }) {
    return sendMessage?.call(chatId, messagesId, uid1, uid2, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getChats,
    TResult Function(String chatId)? getMessages,
    TResult Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)?
        sendMessage,
    TResult Function(String chatId)? deleteMessage,
    TResult Function(String uid1, String uid2)? isExistingChat,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(chatId, messagesId, uid1, uid2, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_IsExistingChat value) isExistingChat,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_IsExistingChat value)? isExistingChat,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_IsExistingChat value)? isExistingChat,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage(
      {final String? chatId,
      final String? messagesId,
      required final String uid1,
      required final String uid2,
      required final MessageVo message}) = _$SendMessageImpl;

  String? get chatId;
  String? get messagesId;
  String get uid1;
  String get uid2;
  MessageVo get message;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMessageImplCopyWith<$Res> {
  factory _$$DeleteMessageImplCopyWith(
          _$DeleteMessageImpl value, $Res Function(_$DeleteMessageImpl) then) =
      __$$DeleteMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$DeleteMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DeleteMessageImpl>
    implements _$$DeleteMessageImplCopyWith<$Res> {
  __$$DeleteMessageImplCopyWithImpl(
      _$DeleteMessageImpl _value, $Res Function(_$DeleteMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$DeleteMessageImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteMessageImpl implements _DeleteMessage {
  const _$DeleteMessageImpl(this.chatId);

  @override
  final String chatId;

  @override
  String toString() {
    return 'ChatEvent.deleteMessage(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessageImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      __$$DeleteMessageImplCopyWithImpl<_$DeleteMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getChats,
    required TResult Function(String chatId) getMessages,
    required TResult Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)
        sendMessage,
    required TResult Function(String chatId) deleteMessage,
    required TResult Function(String uid1, String uid2) isExistingChat,
  }) {
    return deleteMessage(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getChats,
    TResult? Function(String chatId)? getMessages,
    TResult? Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)?
        sendMessage,
    TResult? Function(String chatId)? deleteMessage,
    TResult? Function(String uid1, String uid2)? isExistingChat,
  }) {
    return deleteMessage?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getChats,
    TResult Function(String chatId)? getMessages,
    TResult Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)?
        sendMessage,
    TResult Function(String chatId)? deleteMessage,
    TResult Function(String uid1, String uid2)? isExistingChat,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_IsExistingChat value) isExistingChat,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_IsExistingChat value)? isExistingChat,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_IsExistingChat value)? isExistingChat,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class _DeleteMessage implements ChatEvent {
  const factory _DeleteMessage(final String chatId) = _$DeleteMessageImpl;

  String get chatId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsExistingChatImplCopyWith<$Res> {
  factory _$$IsExistingChatImplCopyWith(_$IsExistingChatImpl value,
          $Res Function(_$IsExistingChatImpl) then) =
      __$$IsExistingChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid1, String uid2});
}

/// @nodoc
class __$$IsExistingChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$IsExistingChatImpl>
    implements _$$IsExistingChatImplCopyWith<$Res> {
  __$$IsExistingChatImplCopyWithImpl(
      _$IsExistingChatImpl _value, $Res Function(_$IsExistingChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid1 = null,
    Object? uid2 = null,
  }) {
    return _then(_$IsExistingChatImpl(
      uid1: null == uid1
          ? _value.uid1
          : uid1 // ignore: cast_nullable_to_non_nullable
              as String,
      uid2: null == uid2
          ? _value.uid2
          : uid2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsExistingChatImpl implements _IsExistingChat {
  const _$IsExistingChatImpl({required this.uid1, required this.uid2});

  @override
  final String uid1;
  @override
  final String uid2;

  @override
  String toString() {
    return 'ChatEvent.isExistingChat(uid1: $uid1, uid2: $uid2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsExistingChatImpl &&
            (identical(other.uid1, uid1) || other.uid1 == uid1) &&
            (identical(other.uid2, uid2) || other.uid2 == uid2));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid1, uid2);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsExistingChatImplCopyWith<_$IsExistingChatImpl> get copyWith =>
      __$$IsExistingChatImplCopyWithImpl<_$IsExistingChatImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getChats,
    required TResult Function(String chatId) getMessages,
    required TResult Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)
        sendMessage,
    required TResult Function(String chatId) deleteMessage,
    required TResult Function(String uid1, String uid2) isExistingChat,
  }) {
    return isExistingChat(uid1, uid2);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getChats,
    TResult? Function(String chatId)? getMessages,
    TResult? Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)?
        sendMessage,
    TResult? Function(String chatId)? deleteMessage,
    TResult? Function(String uid1, String uid2)? isExistingChat,
  }) {
    return isExistingChat?.call(uid1, uid2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getChats,
    TResult Function(String chatId)? getMessages,
    TResult Function(String? chatId, String? messagesId, String uid1,
            String uid2, MessageVo message)?
        sendMessage,
    TResult Function(String chatId)? deleteMessage,
    TResult Function(String uid1, String uid2)? isExistingChat,
    required TResult orElse(),
  }) {
    if (isExistingChat != null) {
      return isExistingChat(uid1, uid2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_IsExistingChat value) isExistingChat,
  }) {
    return isExistingChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_IsExistingChat value)? isExistingChat,
  }) {
    return isExistingChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_IsExistingChat value)? isExistingChat,
    required TResult orElse(),
  }) {
    if (isExistingChat != null) {
      return isExistingChat(this);
    }
    return orElse();
  }
}

abstract class _IsExistingChat implements ChatEvent {
  const factory _IsExistingChat(
      {required final String uid1,
      required final String uid2}) = _$IsExistingChatImpl;

  String get uid1;
  String get uid2;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsExistingChatImplCopyWith<_$IsExistingChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  String? get errorMessage => throw _privateConstructorUsedError;
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  StateStatus get messageStatus => throw _privateConstructorUsedError;
  List<ChatVo> get chats => throw _privateConstructorUsedError;
  List<MessageVo> get messages => throw _privateConstructorUsedError;
  String? get currentChatId => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {String? errorMessage,
      StateStatus stateStatus,
      StateStatus messageStatus,
      List<ChatVo> chats,
      List<MessageVo> messages,
      String? currentChatId});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? stateStatus = null,
    Object? messageStatus = null,
    Object? chats = null,
    Object? messages = null,
    Object? currentChatId = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      messageStatus: null == messageStatus
          ? _value.messageStatus
          : messageStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatVo>,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageVo>,
      currentChatId: freezed == currentChatId
          ? _value.currentChatId
          : currentChatId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      StateStatus stateStatus,
      StateStatus messageStatus,
      List<ChatVo> chats,
      List<MessageVo> messages,
      String? currentChatId});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? stateStatus = null,
    Object? messageStatus = null,
    Object? chats = null,
    Object? messages = null,
    Object? currentChatId = freezed,
  }) {
    return _then(_$ChatStateImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      messageStatus: null == messageStatus
          ? _value.messageStatus
          : messageStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatVo>,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageVo>,
      currentChatId: freezed == currentChatId
          ? _value.currentChatId
          : currentChatId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {this.errorMessage,
      required this.stateStatus,
      required this.messageStatus,
      required final List<ChatVo> chats,
      required final List<MessageVo> messages,
      this.currentChatId})
      : _chats = chats,
        _messages = messages;

  @override
  final String? errorMessage;
  @override
  final StateStatus stateStatus;
  @override
  final StateStatus messageStatus;
  final List<ChatVo> _chats;
  @override
  List<ChatVo> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  final List<MessageVo> _messages;
  @override
  List<MessageVo> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String? currentChatId;

  @override
  String toString() {
    return 'ChatState(errorMessage: $errorMessage, stateStatus: $stateStatus, messageStatus: $messageStatus, chats: $chats, messages: $messages, currentChatId: $currentChatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.messageStatus, messageStatus) ||
                other.messageStatus == messageStatus) &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.currentChatId, currentChatId) ||
                other.currentChatId == currentChatId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      stateStatus,
      messageStatus,
      const DeepCollectionEquality().hash(_chats),
      const DeepCollectionEquality().hash(_messages),
      currentChatId);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final String? errorMessage,
      required final StateStatus stateStatus,
      required final StateStatus messageStatus,
      required final List<ChatVo> chats,
      required final List<MessageVo> messages,
      final String? currentChatId}) = _$ChatStateImpl;

  @override
  String? get errorMessage;
  @override
  StateStatus get stateStatus;
  @override
  StateStatus get messageStatus;
  @override
  List<ChatVo> get chats;
  @override
  List<MessageVo> get messages;
  @override
  String? get currentChatId;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
