part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUsers() = _GetUsers;
  const factory UserEvent.searchUser({
    required String query,
  }) = _SearchUser;
  const factory UserEvent.changeStateStatus({
    StateStatus? stateStatus,
    AuthStatus? authStatus,
    NavigatePage? navigatePage,
    String? errorMessage,
  }) = _ChangeStateStatus;
}
