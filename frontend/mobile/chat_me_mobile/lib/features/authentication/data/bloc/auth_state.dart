part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    String? errorMessage,
    required StateStatus stateStatus,
    required NavigatePage navigatePage,
    required AuthStatus authStatus,
    UserVo? loginDatas,
    bool? hasRegisteredUser,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        stateStatus: StateStatus.initialState,
        navigatePage: NavigatePage.loginPage,
        authStatus: AuthStatus.unauthenticated,
      );
}
