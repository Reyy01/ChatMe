import 'package:chat_me_mobile/core/logic/error_messages.dart';
import 'package:chat_me_mobile/core/logic/result.dart';
import 'package:chat_me_mobile/core/logic/server_exception.dart';
import 'package:chat_me_mobile/core/network/network_info.dart';
import 'package:chat_me_mobile/features/authentication/data/datasources/auth_local_datasource.dart';
import 'package:chat_me_mobile/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/LoginUser.dto.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/RegisterUser.dto.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/User.dto.dart';
import 'package:chat_me_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:chat_me_mobile/features/authentication/domain/vo/User.vo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.prod)
@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this.networkInfo,
    required this.authRemoteDatasource,
    required this.authLocalDatasource,
  });

  final NetworkInfo networkInfo;
  final AuthRemoteDatasource authRemoteDatasource;
  final AuthLocalDatasource authLocalDatasource;

  @override
  Future<Result<UserVo>> loginUser(LoginUserDto loginUserDto) async {
    if (await networkInfo.isConnected) {
      try {
        final UserDto loginResult =
            await authRemoteDatasource.loginUser(loginUserDto);
        await authLocalDatasource.saveCredentials(loginUserDto);

        return UserVo.create(loginResult);
      } on ServerException catch (e) {
        return Result<UserVo>.fail(error: e.message);
      }
    } else {
      return const Result<UserVo>.fail(error: ERR_NO_INTERNET_CONNECTION);
    }
  }

  @override
  Future<Result<Unit>> registerUser(RegisterUserDto registerUserDto) async {
    if (await networkInfo.isConnected) {
      try {
        final Unit result =
            await authRemoteDatasource.registerUser(registerUserDto);

        return Result<Unit>.ok(data: result);
      } on ServerException catch (e) {
        return Result<Unit>.fail(error: e.message);
      }
    } else {
      return const Result<Unit>.fail(error: ERR_NO_INTERNET_CONNECTION);
    }
  }

  @override
  Future<Result<Unit>> logoutUser() async {
    if (await networkInfo.isConnected) {
      try {
        final Unit loginResult = await authRemoteDatasource.logoutUser();

        authLocalDatasource.deleteCredetialsAndTokens();

        return Result<Unit>.ok(data: loginResult);
      } on ServerException catch (e) {
        return Result<Unit>.fail(error: e.message);
      }
    } else {
      return const Result<Unit>.fail(error: ERR_NO_INTERNET_CONNECTION);
    }
  }

  @override
  Future<Result<UserVo>> getCurrentUser() async {
    if (await networkInfo.isConnected) {
      try {
        final UserDto result = await authRemoteDatasource.getCurrentUser();

        return UserVo.create(result);
      } on ServerException catch (e) {
        return Result<UserVo>.fail(error: e.message);
      }
    } else {
      return const Result<UserVo>.fail(error: ERR_NO_INTERNET_CONNECTION);
    }
  }

  @override
  Stream<Result<List<UserDto>>> test() {
    final Stream<List<UserDto>> stream = authRemoteDatasource.test();

    return stream.map((List<UserDto> event) {
      return Result<List<UserDto>>.ok(data: event);
    });
  }
}
