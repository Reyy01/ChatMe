part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.getCurrentUser() = _GetCurrentUser;

  const factory AuthEvent.loginUser({
    required LoginUserDto loginUserDto,
  }) = _LoginUser;

  const factory AuthEvent.registerUser({
    required RegisterUserDto registerUserDto,
  }) = _RegisterUser;

  const factory AuthEvent.logoutUser() = _LogoutUser;

  const factory AuthEvent.connectUserStream() = _UserStream;

  const factory AuthEvent.changeStateStatus({
    StateStatus? stateStatus,
    AuthStatus? authStatus,
    NavigatePage? navigatePage,
    String? errorMessage,
  }) = _ChangeStateStatus;
}
