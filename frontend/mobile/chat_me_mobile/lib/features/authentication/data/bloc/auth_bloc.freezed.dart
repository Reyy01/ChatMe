// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(LoginUserDto loginUserDto) loginUser,
    required TResult Function(RegisterUserDto registerUserDto) registerUser,
    required TResult Function() logoutUser,
    required TResult Function() connectUserStream,
    required TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)
        changeStateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(LoginUserDto loginUserDto)? loginUser,
    TResult? Function(RegisterUserDto registerUserDto)? registerUser,
    TResult? Function()? logoutUser,
    TResult? Function()? connectUserStream,
    TResult? Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(LoginUserDto loginUserDto)? loginUser,
    TResult Function(RegisterUserDto registerUserDto)? registerUser,
    TResult Function()? logoutUser,
    TResult Function()? connectUserStream,
    TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_UserStream value) connectUserStream,
    required TResult Function(_ChangeStateStatus value) changeStateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_UserStream value)? connectUserStream,
    TResult? Function(_ChangeStateStatus value)? changeStateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_UserStream value)? connectUserStream,
    TResult Function(_ChangeStateStatus value)? changeStateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCurrentUserImplCopyWith<$Res> {
  factory _$$GetCurrentUserImplCopyWith(_$GetCurrentUserImpl value,
          $Res Function(_$GetCurrentUserImpl) then) =
      __$$GetCurrentUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetCurrentUserImpl>
    implements _$$GetCurrentUserImplCopyWith<$Res> {
  __$$GetCurrentUserImplCopyWithImpl(
      _$GetCurrentUserImpl _value, $Res Function(_$GetCurrentUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCurrentUserImpl implements _GetCurrentUser {
  const _$GetCurrentUserImpl();

  @override
  String toString() {
    return 'AuthEvent.getCurrentUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(LoginUserDto loginUserDto) loginUser,
    required TResult Function(RegisterUserDto registerUserDto) registerUser,
    required TResult Function() logoutUser,
    required TResult Function() connectUserStream,
    required TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)
        changeStateStatus,
  }) {
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(LoginUserDto loginUserDto)? loginUser,
    TResult? Function(RegisterUserDto registerUserDto)? registerUser,
    TResult? Function()? logoutUser,
    TResult? Function()? connectUserStream,
    TResult? Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
  }) {
    return getCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(LoginUserDto loginUserDto)? loginUser,
    TResult Function(RegisterUserDto registerUserDto)? registerUser,
    TResult Function()? logoutUser,
    TResult Function()? connectUserStream,
    TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_UserStream value) connectUserStream,
    required TResult Function(_ChangeStateStatus value) changeStateStatus,
  }) {
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_UserStream value)? connectUserStream,
    TResult? Function(_ChangeStateStatus value)? changeStateStatus,
  }) {
    return getCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_UserStream value)? connectUserStream,
    TResult Function(_ChangeStateStatus value)? changeStateStatus,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentUser implements AuthEvent {
  const factory _GetCurrentUser() = _$GetCurrentUserImpl;
}

/// @nodoc
abstract class _$$LoginUserImplCopyWith<$Res> {
  factory _$$LoginUserImplCopyWith(
          _$LoginUserImpl value, $Res Function(_$LoginUserImpl) then) =
      __$$LoginUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginUserDto loginUserDto});
}

/// @nodoc
class __$$LoginUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginUserImpl>
    implements _$$LoginUserImplCopyWith<$Res> {
  __$$LoginUserImplCopyWithImpl(
      _$LoginUserImpl _value, $Res Function(_$LoginUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginUserDto = null,
  }) {
    return _then(_$LoginUserImpl(
      loginUserDto: null == loginUserDto
          ? _value.loginUserDto
          : loginUserDto // ignore: cast_nullable_to_non_nullable
              as LoginUserDto,
    ));
  }
}

/// @nodoc

class _$LoginUserImpl implements _LoginUser {
  const _$LoginUserImpl({required this.loginUserDto});

  @override
  final LoginUserDto loginUserDto;

  @override
  String toString() {
    return 'AuthEvent.loginUser(loginUserDto: $loginUserDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserImpl &&
            (identical(other.loginUserDto, loginUserDto) ||
                other.loginUserDto == loginUserDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginUserDto);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserImplCopyWith<_$LoginUserImpl> get copyWith =>
      __$$LoginUserImplCopyWithImpl<_$LoginUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(LoginUserDto loginUserDto) loginUser,
    required TResult Function(RegisterUserDto registerUserDto) registerUser,
    required TResult Function() logoutUser,
    required TResult Function() connectUserStream,
    required TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)
        changeStateStatus,
  }) {
    return loginUser(loginUserDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(LoginUserDto loginUserDto)? loginUser,
    TResult? Function(RegisterUserDto registerUserDto)? registerUser,
    TResult? Function()? logoutUser,
    TResult? Function()? connectUserStream,
    TResult? Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
  }) {
    return loginUser?.call(loginUserDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(LoginUserDto loginUserDto)? loginUser,
    TResult Function(RegisterUserDto registerUserDto)? registerUser,
    TResult Function()? logoutUser,
    TResult Function()? connectUserStream,
    TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(loginUserDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_UserStream value) connectUserStream,
    required TResult Function(_ChangeStateStatus value) changeStateStatus,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_UserStream value)? connectUserStream,
    TResult? Function(_ChangeStateStatus value)? changeStateStatus,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_UserStream value)? connectUserStream,
    TResult Function(_ChangeStateStatus value)? changeStateStatus,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class _LoginUser implements AuthEvent {
  const factory _LoginUser({required final LoginUserDto loginUserDto}) =
      _$LoginUserImpl;

  LoginUserDto get loginUserDto;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginUserImplCopyWith<_$LoginUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterUserImplCopyWith<$Res> {
  factory _$$RegisterUserImplCopyWith(
          _$RegisterUserImpl value, $Res Function(_$RegisterUserImpl) then) =
      __$$RegisterUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterUserDto registerUserDto});
}

/// @nodoc
class __$$RegisterUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterUserImpl>
    implements _$$RegisterUserImplCopyWith<$Res> {
  __$$RegisterUserImplCopyWithImpl(
      _$RegisterUserImpl _value, $Res Function(_$RegisterUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerUserDto = null,
  }) {
    return _then(_$RegisterUserImpl(
      registerUserDto: null == registerUserDto
          ? _value.registerUserDto
          : registerUserDto // ignore: cast_nullable_to_non_nullable
              as RegisterUserDto,
    ));
  }
}

/// @nodoc

class _$RegisterUserImpl implements _RegisterUser {
  const _$RegisterUserImpl({required this.registerUserDto});

  @override
  final RegisterUserDto registerUserDto;

  @override
  String toString() {
    return 'AuthEvent.registerUser(registerUserDto: $registerUserDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserImpl &&
            (identical(other.registerUserDto, registerUserDto) ||
                other.registerUserDto == registerUserDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerUserDto);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      __$$RegisterUserImplCopyWithImpl<_$RegisterUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(LoginUserDto loginUserDto) loginUser,
    required TResult Function(RegisterUserDto registerUserDto) registerUser,
    required TResult Function() logoutUser,
    required TResult Function() connectUserStream,
    required TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)
        changeStateStatus,
  }) {
    return registerUser(registerUserDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(LoginUserDto loginUserDto)? loginUser,
    TResult? Function(RegisterUserDto registerUserDto)? registerUser,
    TResult? Function()? logoutUser,
    TResult? Function()? connectUserStream,
    TResult? Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
  }) {
    return registerUser?.call(registerUserDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(LoginUserDto loginUserDto)? loginUser,
    TResult Function(RegisterUserDto registerUserDto)? registerUser,
    TResult Function()? logoutUser,
    TResult Function()? connectUserStream,
    TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(registerUserDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_UserStream value) connectUserStream,
    required TResult Function(_ChangeStateStatus value) changeStateStatus,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_UserStream value)? connectUserStream,
    TResult? Function(_ChangeStateStatus value)? changeStateStatus,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_UserStream value)? connectUserStream,
    TResult Function(_ChangeStateStatus value)? changeStateStatus,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _RegisterUser implements AuthEvent {
  const factory _RegisterUser(
      {required final RegisterUserDto registerUserDto}) = _$RegisterUserImpl;

  RegisterUserDto get registerUserDto;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutUserImplCopyWith<$Res> {
  factory _$$LogoutUserImplCopyWith(
          _$LogoutUserImpl value, $Res Function(_$LogoutUserImpl) then) =
      __$$LogoutUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutUserImpl>
    implements _$$LogoutUserImplCopyWith<$Res> {
  __$$LogoutUserImplCopyWithImpl(
      _$LogoutUserImpl _value, $Res Function(_$LogoutUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutUserImpl implements _LogoutUser {
  const _$LogoutUserImpl();

  @override
  String toString() {
    return 'AuthEvent.logoutUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(LoginUserDto loginUserDto) loginUser,
    required TResult Function(RegisterUserDto registerUserDto) registerUser,
    required TResult Function() logoutUser,
    required TResult Function() connectUserStream,
    required TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)
        changeStateStatus,
  }) {
    return logoutUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(LoginUserDto loginUserDto)? loginUser,
    TResult? Function(RegisterUserDto registerUserDto)? registerUser,
    TResult? Function()? logoutUser,
    TResult? Function()? connectUserStream,
    TResult? Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
  }) {
    return logoutUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(LoginUserDto loginUserDto)? loginUser,
    TResult Function(RegisterUserDto registerUserDto)? registerUser,
    TResult Function()? logoutUser,
    TResult Function()? connectUserStream,
    TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_UserStream value) connectUserStream,
    required TResult Function(_ChangeStateStatus value) changeStateStatus,
  }) {
    return logoutUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_UserStream value)? connectUserStream,
    TResult? Function(_ChangeStateStatus value)? changeStateStatus,
  }) {
    return logoutUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_UserStream value)? connectUserStream,
    TResult Function(_ChangeStateStatus value)? changeStateStatus,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser(this);
    }
    return orElse();
  }
}

abstract class _LogoutUser implements AuthEvent {
  const factory _LogoutUser() = _$LogoutUserImpl;
}

/// @nodoc
abstract class _$$UserStreamImplCopyWith<$Res> {
  factory _$$UserStreamImplCopyWith(
          _$UserStreamImpl value, $Res Function(_$UserStreamImpl) then) =
      __$$UserStreamImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStreamImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserStreamImpl>
    implements _$$UserStreamImplCopyWith<$Res> {
  __$$UserStreamImplCopyWithImpl(
      _$UserStreamImpl _value, $Res Function(_$UserStreamImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserStreamImpl implements _UserStream {
  const _$UserStreamImpl();

  @override
  String toString() {
    return 'AuthEvent.connectUserStream()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStreamImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(LoginUserDto loginUserDto) loginUser,
    required TResult Function(RegisterUserDto registerUserDto) registerUser,
    required TResult Function() logoutUser,
    required TResult Function() connectUserStream,
    required TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)
        changeStateStatus,
  }) {
    return connectUserStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(LoginUserDto loginUserDto)? loginUser,
    TResult? Function(RegisterUserDto registerUserDto)? registerUser,
    TResult? Function()? logoutUser,
    TResult? Function()? connectUserStream,
    TResult? Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
  }) {
    return connectUserStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(LoginUserDto loginUserDto)? loginUser,
    TResult Function(RegisterUserDto registerUserDto)? registerUser,
    TResult Function()? logoutUser,
    TResult Function()? connectUserStream,
    TResult Function(StateStatus? stateStatus, AuthStatus? authStatus,
            NavigatePage? navigatePage, String? errorMessage)?
        changeStateStatus,
    required TResult orElse(),
  }) {
    if (connectUserStream != null) {
      return connectUserStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_UserStream value) connectUserStream,
    required TResult Function(_ChangeStateStatus value) changeStateStatus,
  }) {
    return connectUserStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_UserStream value)? connectUserStream,
    TResult? Function(_ChangeStateStatus value)? changeStateStatus,
  }) {
    return connectUserStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_UserStream value)? connectUserStream,
    TResult Function(_ChangeStateStatus value)? changeStateStatus,
    required TResult orElse(),
  }) {
    if (connectUserStream != null) {
      return connectUserStream(this);
    }
    return orElse();
  }
}

abstract class _UserStream implements AuthEvent {
  const factory _UserStream() = _$UserStreamImpl;
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
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeStateStatusImpl>
    implements _$$ChangeStateStatusImplCopyWith<$Res> {
  __$$ChangeStateStatusImplCopyWithImpl(_$ChangeStateStatusImpl _value,
      $Res Function(_$ChangeStateStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
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
    return 'AuthEvent.changeStateStatus(stateStatus: $stateStatus, authStatus: $authStatus, navigatePage: $navigatePage, errorMessage: $errorMessage)';
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

  /// Create a copy of AuthEvent
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
    required TResult Function() getCurrentUser,
    required TResult Function(LoginUserDto loginUserDto) loginUser,
    required TResult Function(RegisterUserDto registerUserDto) registerUser,
    required TResult Function() logoutUser,
    required TResult Function() connectUserStream,
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
    TResult? Function()? getCurrentUser,
    TResult? Function(LoginUserDto loginUserDto)? loginUser,
    TResult? Function(RegisterUserDto registerUserDto)? registerUser,
    TResult? Function()? logoutUser,
    TResult? Function()? connectUserStream,
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
    TResult Function()? getCurrentUser,
    TResult Function(LoginUserDto loginUserDto)? loginUser,
    TResult Function(RegisterUserDto registerUserDto)? registerUser,
    TResult Function()? logoutUser,
    TResult Function()? connectUserStream,
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
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_LogoutUser value) logoutUser,
    required TResult Function(_UserStream value) connectUserStream,
    required TResult Function(_ChangeStateStatus value) changeStateStatus,
  }) {
    return changeStateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_LogoutUser value)? logoutUser,
    TResult? Function(_UserStream value)? connectUserStream,
    TResult? Function(_ChangeStateStatus value)? changeStateStatus,
  }) {
    return changeStateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_LogoutUser value)? logoutUser,
    TResult Function(_UserStream value)? connectUserStream,
    TResult Function(_ChangeStateStatus value)? changeStateStatus,
    required TResult orElse(),
  }) {
    if (changeStateStatus != null) {
      return changeStateStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeStateStatus implements AuthEvent {
  const factory _ChangeStateStatus(
      {final StateStatus? stateStatus,
      final AuthStatus? authStatus,
      final NavigatePage? navigatePage,
      final String? errorMessage}) = _$ChangeStateStatusImpl;

  StateStatus? get stateStatus;
  AuthStatus? get authStatus;
  NavigatePage? get navigatePage;
  String? get errorMessage;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeStateStatusImplCopyWith<_$ChangeStateStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  String? get errorMessage => throw _privateConstructorUsedError;
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  NavigatePage get navigatePage => throw _privateConstructorUsedError;
  AuthStatus get authStatus => throw _privateConstructorUsedError;
  UserVo? get loginDatas => throw _privateConstructorUsedError;
  bool? get hasRegisteredUser => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String? errorMessage,
      StateStatus stateStatus,
      NavigatePage navigatePage,
      AuthStatus authStatus,
      UserVo? loginDatas,
      bool? hasRegisteredUser});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? stateStatus = null,
    Object? navigatePage = null,
    Object? authStatus = null,
    Object? loginDatas = freezed,
    Object? hasRegisteredUser = freezed,
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
      navigatePage: null == navigatePage
          ? _value.navigatePage
          : navigatePage // ignore: cast_nullable_to_non_nullable
              as NavigatePage,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      loginDatas: freezed == loginDatas
          ? _value.loginDatas
          : loginDatas // ignore: cast_nullable_to_non_nullable
              as UserVo?,
      hasRegisteredUser: freezed == hasRegisteredUser
          ? _value.hasRegisteredUser
          : hasRegisteredUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      StateStatus stateStatus,
      NavigatePage navigatePage,
      AuthStatus authStatus,
      UserVo? loginDatas,
      bool? hasRegisteredUser});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? stateStatus = null,
    Object? navigatePage = null,
    Object? authStatus = null,
    Object? loginDatas = freezed,
    Object? hasRegisteredUser = freezed,
  }) {
    return _then(_$AuthStateImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      navigatePage: null == navigatePage
          ? _value.navigatePage
          : navigatePage // ignore: cast_nullable_to_non_nullable
              as NavigatePage,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      loginDatas: freezed == loginDatas
          ? _value.loginDatas
          : loginDatas // ignore: cast_nullable_to_non_nullable
              as UserVo?,
      hasRegisteredUser: freezed == hasRegisteredUser
          ? _value.hasRegisteredUser
          : hasRegisteredUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.errorMessage,
      required this.stateStatus,
      required this.navigatePage,
      required this.authStatus,
      this.loginDatas,
      this.hasRegisteredUser});

  @override
  final String? errorMessage;
  @override
  final StateStatus stateStatus;
  @override
  final NavigatePage navigatePage;
  @override
  final AuthStatus authStatus;
  @override
  final UserVo? loginDatas;
  @override
  final bool? hasRegisteredUser;

  @override
  String toString() {
    return 'AuthState(errorMessage: $errorMessage, stateStatus: $stateStatus, navigatePage: $navigatePage, authStatus: $authStatus, loginDatas: $loginDatas, hasRegisteredUser: $hasRegisteredUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.navigatePage, navigatePage) ||
                other.navigatePage == navigatePage) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.loginDatas, loginDatas) ||
                other.loginDatas == loginDatas) &&
            (identical(other.hasRegisteredUser, hasRegisteredUser) ||
                other.hasRegisteredUser == hasRegisteredUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, stateStatus,
      navigatePage, authStatus, loginDatas, hasRegisteredUser);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final String? errorMessage,
      required final StateStatus stateStatus,
      required final NavigatePage navigatePage,
      required final AuthStatus authStatus,
      final UserVo? loginDatas,
      final bool? hasRegisteredUser}) = _$AuthStateImpl;

  @override
  String? get errorMessage;
  @override
  StateStatus get stateStatus;
  @override
  NavigatePage get navigatePage;
  @override
  AuthStatus get authStatus;
  @override
  UserVo? get loginDatas;
  @override
  bool? get hasRegisteredUser;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
