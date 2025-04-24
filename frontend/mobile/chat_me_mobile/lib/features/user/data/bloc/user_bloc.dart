import 'package:chat_me_mobile/core/logic/enums.dart';
import 'package:chat_me_mobile/core/logic/result.dart';
import 'package:chat_me_mobile/features/authentication/domain/vo/User.vo.dart';
import 'package:chat_me_mobile/features/user/domain/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@lazySingleton
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    required this.userRepository,
  }) : super(UserState.initial()) {
    on<_GetUsers>((_GetUsers event, Emitter<UserState> emit) async {
      emit(state.copyWith(stateStatus: StateStatus.loadingState));

      final Stream<Result<List<UserVo>>> result = userRepository.getUsers();

      await for (Result<List<UserVo>> result in result) {
        if (!isClosed) {
          if (!result.isSuccess) {
            emit(state.copyWith(
              stateStatus: StateStatus.errorState,
              errorMessage: result.getError,
            ));
            emit(state.copyWith(
              users: <UserVo>[],
              stateStatus: StateStatus.loadedState,
            ));
          } else {
            print('users ${result.getValue}');
            emit(state.copyWith(
              stateStatus: StateStatus.loadedState,
              users: result.getValue,
            ));
          }
        }
      }
    });

    on<_SearchUser>((_SearchUser event, Emitter<UserState> emit) async {
      emit(state.copyWith(stateStatus: StateStatus.loadingState));

      final Result<List<UserVo>> result =
          await userRepository.searchUser(event.query);

      if (!result.isSuccess) {
        emit(state.copyWith(
          stateStatus: StateStatus.errorState,
          errorMessage: result.getError,
        ));
        emit(state.copyWith(
          searchedUsers: <UserVo>[],
          stateStatus: StateStatus.loadedState,
        ));
      } else {
        emit(state.copyWith(
          stateStatus: StateStatus.loadedState,
          searchedUsers: result.getValue,
        ));
      }
    });
  }

  final UserRepository userRepository;
}
