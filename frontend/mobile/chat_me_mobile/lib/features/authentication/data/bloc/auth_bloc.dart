import 'package:chat_me_mobile/core/logic/enums.dart';
import 'package:chat_me_mobile/core/logic/result.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/LoginUser.dto.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/RegisterUser.dto.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/User.dto.dart';
import 'package:chat_me_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:chat_me_mobile/features/authentication/domain/vo/User.vo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.authRepository,
  }) : super(AuthState.initial()) {
    on<_GetCurrentUser>((_GetCurrentUser event, Emitter<AuthState> emit) async {
      emit(state.copyWith(stateStatus: StateStatus.loadingState));
      print('yoho ${state.stateStatus}');

      final Result<UserVo> result = await authRepository.getCurrentUser();

      if (!result.isSuccess) {
        emit(state.copyWith(
          stateStatus: StateStatus.errorState,
          errorMessage: result.getError,
        ));
        emit(state.copyWith(
          authStatus: AuthStatus.unauthenticated,
          loginDatas: null,
          navigatePage: NavigatePage.loginPage,
          stateStatus: StateStatus.loadedState,
        ));
        print('jowoo ${state.stateStatus}');
      } else {
        emit(state.copyWith(
          stateStatus: StateStatus.loadedState,
          authStatus: AuthStatus.authenticated,
          loginDatas: result.getValue,
          navigatePage: NavigatePage.homePage,
        ));
      }
    });

    on<_LoginUser>((_LoginUser event, Emitter<AuthState> emit) async {
      emit(state.copyWith(stateStatus: StateStatus.loadingState));
      print('yoho ${state.stateStatus}');

      final Result<UserVo> result =
          await authRepository.loginUser(event.loginUserDto);

      if (!result.isSuccess) {
        print('jowoo ${state.stateStatus}');
        emit(state.copyWith(
          stateStatus: StateStatus.errorState,
          errorMessage: result.getError,
        ));
        emit(state.copyWith(
          stateStatus: StateStatus.loadedState,
        ));
      } else {
        emit(state.copyWith(
          stateStatus: StateStatus.loadedState,
          authStatus: AuthStatus.authenticated,
          loginDatas: result.getValue,
          navigatePage: NavigatePage.homePage,
        ));
        print('jowoo ${result.getValue}');
      }
    });

    on<_RegisterUser>((_RegisterUser event, Emitter<AuthState> emit) async {
      emit(state.copyWith(stateStatus: StateStatus.loadingState));
      final Result<Unit> result =
          await authRepository.registerUser(event.registerUserDto);

      if (!result.isSuccess) {
        emit(state.copyWith(
          errorMessage: result.getError,
          stateStatus: StateStatus.errorState,
        ));
        emit(state.copyWith(
          stateStatus: StateStatus.loadedState,
        ));
      } else {
        emit(state.copyWith(
          navigatePage: NavigatePage.defaultPage,
          hasRegisteredUser: true,
        ));
        emit(state.copyWith(
          hasRegisteredUser: false,
          stateStatus: StateStatus.loadedState,
        ));
      }
    });

    on<_LogoutUser>((_LogoutUser event, Emitter<AuthState> emit) async {
      emit(state.copyWith(
        authStatus: AuthStatus.unauthenticated,
        loginDatas: null,
        navigatePage: NavigatePage.loginPage,
      ));

      final Result<Unit> result = await authRepository.logoutUser();

      if (!result.isSuccess) {
        emit(state.copyWith(
          errorMessage: result.getError,
          stateStatus: StateStatus.errorState,
        ));
        emit(state.copyWith(
          stateStatus: StateStatus.loadedState,
        ));
      }
    });

    on<_UserStream>((_UserStream event, Emitter<AuthState> emit) {
      print('connected');
      authRepository.test().listen((Result<List<UserDto>> result) {
        if (!result.isSuccess) {
        } else {
          print('User List ${result.getValue}');
        }
      });
    });
  }

  final AuthRepository authRepository;
}
