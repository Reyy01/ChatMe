// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(String query) searchUser,
    required TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)
        changeStateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUsers,
    TResult? Function(String query)? searchUser,
    TResult? Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(String query)? searchUser,
    TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SearchUser value) searchUser,
    required TResult Function(_ChangeStateStatus value) changeStateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SearchUser value)? searchUser,
    TResult? Function(_ChangeStateStatus value)? changeStateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SearchUser value)? searchUser,
    TResult Function(_ChangeStateStatus value)? changeStateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUsersImplCopyWith<$Res> {
  factory _$$GetUsersImplCopyWith(
          _$GetUsersImpl value, $Res Function(_$GetUsersImpl) then) =
      __$$GetUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUsersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUsersImpl>
    implements _$$GetUsersImplCopyWith<$Res> {
  __$$GetUsersImplCopyWithImpl(
      _$GetUsersImpl _value, $Res Function(_$GetUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUsersImpl implements _GetUsers {
  const _$GetUsersImpl();

  @override
  String toString() {
    return 'UserEvent.getUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(String query) searchUser,
    required TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)
        changeStateStatus,
  }) {
    return getUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUsers,
    TResult? Function(String query)? searchUser,
    TResult? Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
  }) {
    return getUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(String query)? searchUser,
    TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SearchUser value) searchUser,
    required TResult Function(_ChangeStateStatus value) changeStateStatus,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SearchUser value)? searchUser,
    TResult? Function(_ChangeStateStatus value)? changeStateStatus,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SearchUser value)? searchUser,
    TResult Function(_ChangeStateStatus value)? changeStateStatus,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class _GetUsers implements UserEvent {
  const factory _GetUsers() = _$GetUsersImpl;
}

/// @nodoc
abstract class _$$SearchUserImplCopyWith<$Res> {
  factory _$$SearchUserImplCopyWith(
          _$SearchUserImpl value, $Res Function(_$SearchUserImpl) then) =
      __$$SearchUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SearchUserImpl>
    implements _$$SearchUserImplCopyWith<$Res> {
  __$$SearchUserImplCopyWithImpl(
      _$SearchUserImpl _value, $Res Function(_$SearchUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchUserImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchUserImpl implements _SearchUser {
  const _$SearchUserImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'UserEvent.searchUser(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUserImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUserImplCopyWith<_$SearchUserImpl> get copyWith =>
      __$$SearchUserImplCopyWithImpl<_$SearchUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(String query) searchUser,
    required TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)
        changeStateStatus,
  }) {
    return searchUser(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUsers,
    TResult? Function(String query)? searchUser,
    TResult? Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
  }) {
    return searchUser?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(String query)? searchUser,
    TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
    required TResult orElse(),
  }) {
    if (searchUser != null) {
      return searchUser(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SearchUser value) searchUser,
    required TResult Function(_ChangeStateStatus value) changeStateStatus,
  }) {
    return searchUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SearchUser value)? searchUser,
    TResult? Function(_ChangeStateStatus value)? changeStateStatus,
  }) {
    return searchUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SearchUser value)? searchUser,
    TResult Function(_ChangeStateStatus value)? changeStateStatus,
    required TResult orElse(),
  }) {
    if (searchUser != null) {
      return searchUser(this);
    }
    return orElse();
  }
}

abstract class _SearchUser implements UserEvent {
  const factory _SearchUser({required final String query}) = _$SearchUserImpl;

  String get query;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchUserImplCopyWith<_$SearchUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeStateStatusImplCopyWith<$Res> {
  factory _$$ChangeStateStatusImplCopyWith(_$ChangeStateStatusImpl value,
          $Res Function(_$ChangeStateStatusImpl) then) =
      __$$ChangeStateStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {StateStatus? stateStatus,
      AuthStatus? authStatus,
      NavigatePage? navigatePage,
      String? errorMessage});
}

/// @nodoc
class __$$ChangeStateStatusImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$ChangeStateStatusImpl>
    implements _$$ChangeStateStatusImplCopyWith<$Res> {
  __$$ChangeStateStatusImplCopyWithImpl(_$ChangeStateStatusImpl _value,
      $Res Function(_$ChangeStateStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = freezed,
    Object? authStatus = freezed,
    Object? navigatePage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ChangeStateStatusImpl(
      stateStatus: freezed == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus?,
      authStatus: freezed == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus?,
      navigatePage: freezed == navigatePage
          ? _value.navigatePage
          : navigatePage // ignore: cast_nullable_to_non_nullable
              as NavigatePage?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeStateStatusImpl implements _ChangeStateStatus {
  const _$ChangeStateStatusImpl(
      {this.stateStatus,
      this.authStatus,
      this.navigatePage,
      this.errorMessage});

  @override
  final StateStatus? stateStatus;
  @override
  final AuthStatus? authStatus;
  @override
  final NavigatePage? navigatePage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'UserEvent.changeStateStatus(stateStatus: $stateStatus, authStatus: $authStatus, navigatePage: $navigatePage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStateStatusImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.navigatePage, navigatePage) ||
                other.navigatePage == navigatePage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, stateStatus, authStatus, navigatePage, errorMessage);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStateStatusImplCopyWith<_$ChangeStateStatusImpl> get copyWith =>
      __$$ChangeStateStatusImplCopyWithImpl<_$ChangeStateStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(String query) searchUser,
    required TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)
        changeStateStatus,
  }) {
    return changeStateStatus(
        stateStatus, authStatus, navigatePage, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUsers,
    TResult? Function(String query)? searchUser,
    TResult? Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
  }) {
    return changeStateStatus?.call(
        stateStatus, authStatus, navigatePage, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(String query)? searchUser,
    TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
    required TResult orElse(),
  }) {
    if (changeStateStatus != null) {
      return changeStateStatus(
          stateStatus, authStatus, navigatePage, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SearchUser value) searchUser,
    required TResult Function(_ChangeStateStatus value) changeStateStatus,
  }) {
    return changeStateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_SearchUser value)? searchUser,
    TResult? Function(_ChangeStateStatus value)? changeStateStatus,
  }) {
    return changeStateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SearchUser value)? searchUser,
    TResult Function(_ChangeStateStatus value)? changeStateStatus,
    required TResult orElse(),
  }) {
    if (changeStateStatus != null) {
      return changeStateStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeStateStatus implements UserEvent {
  const factory _ChangeStateStatus(
      {final StateStatus? stateStatus,
      final AuthStatus? authStatus,
      final NavigatePage? navigatePage,
      final String? errorMessage}) = _$ChangeStateStatusImpl;

  StateStatus? get stateStatus;
  AuthStatus? get authStatus;
  NavigatePage? get navigatePage;
  String? get errorMessage;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeStateStatusImplCopyWith<_$ChangeStateStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  String? get errorMessage => throw _privateConstructorUsedError;
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<UserVo>? get users => throw _privateConstructorUsedError;
  List<UserVo>? get searchedUsers => throw _privateConstructorUsedError;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {String? errorMessage,
      StateStatus stateStatus,
      List<UserVo>? users,
      List<UserVo>? searchedUsers});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? stateStatus = null,
    Object? users = freezed,
    Object? searchedUsers = freezed,
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
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserVo>?,
      searchedUsers: freezed == searchedUsers
          ? _value.searchedUsers
          : searchedUsers // ignore: cast_nullable_to_non_nullable
              as List<UserVo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      StateStatus stateStatus,
      List<UserVo>? users,
      List<UserVo>? searchedUsers});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? stateStatus = null,
    Object? users = freezed,
    Object? searchedUsers = freezed,
  }) {
    return _then(_$UserStateImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserVo>?,
      searchedUsers: freezed == searchedUsers
          ? _value._searchedUsers
          : searchedUsers // ignore: cast_nullable_to_non_nullable
              as List<UserVo>?,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {this.errorMessage,
      required this.stateStatus,
      final List<UserVo>? users,
      final List<UserVo>? searchedUsers})
      : _users = users,
        _searchedUsers = searchedUsers;

  @override
  final String? errorMessage;
  @override
  final StateStatus stateStatus;
  final List<UserVo>? _users;
  @override
  List<UserVo>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserVo>? _searchedUsers;
  @override
  List<UserVo>? get searchedUsers {
    final value = _searchedUsers;
    if (value == null) return null;
    if (_searchedUsers is EqualUnmodifiableListView) return _searchedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserState(errorMessage: $errorMessage, stateStatus: $stateStatus, users: $users, searchedUsers: $searchedUsers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._searchedUsers, _searchedUsers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      stateStatus,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_searchedUsers));

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final String? errorMessage,
      required final StateStatus stateStatus,
      final List<UserVo>? users,
      final List<UserVo>? searchedUsers}) = _$UserStateImpl;

  @override
  String? get errorMessage;
  @override
  StateStatus get stateStatus;
  @override
  List<UserVo>? get users;
  @override
  List<UserVo>? get searchedUsers;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
