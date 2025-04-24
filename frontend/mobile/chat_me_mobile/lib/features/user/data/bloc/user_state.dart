part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    String? errorMessage,
    required StateStatus stateStatus,
    List<UserVo>? users,
    List<UserVo>? searchedUsers,
  }) = _UserState;

  factory UserState.initial() => const UserState(
        stateStatus: StateStatus.initialState,
      );
}
