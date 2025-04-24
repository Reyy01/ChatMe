import 'package:chat_me_mobile/core/logic/error_messages.dart';
import 'package:chat_me_mobile/core/logic/result.dart';
import 'package:chat_me_mobile/core/logic/server_exception.dart';
import 'package:chat_me_mobile/core/network/network_info.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/User.dto.dart';
import 'package:chat_me_mobile/features/authentication/domain/vo/User.vo.dart';
import 'package:chat_me_mobile/features/user/data/datasources/user_remote_datasource.dart';
import 'package:chat_me_mobile/features/user/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.prod)
@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({
    required this.networkInfo,
    required this.userRemoteDatasource,
  });

  final NetworkInfo networkInfo;
  final UserRemoteDatasource userRemoteDatasource;

  @override
  Stream<Result<List<UserVo>>> getUsers() {
    final Stream<List<UserDto>> users = userRemoteDatasource.getUsers();
    return users.map((List<UserDto> events) {
      try {
        return Result<List<UserVo>>.ok(
          data: events
              .map((UserDto event) => UserVo.create(event).getValue)
              .toList(),
        );
      } catch (e) {
        return Result<List<UserVo>>.fail(error: e.toString());
      }
    });
  }

  @override
  Future<Result<List<UserVo>>> searchUser(String query) async {
    if (await networkInfo.isConnected) {
      try {
        final List<UserDto> users =
            await userRemoteDatasource.searchUser(query);
        return Result<List<UserVo>>.ok(
          data: users
              .map((UserDto event) => UserVo.create(event).getValue)
              .toList(),
        );
      } on ServerException catch (e) {
        return Result<List<UserVo>>.fail(error: e.message);
      }
    } else {
      return const Result<List<UserVo>>.fail(error: ERR_NO_INTERNET_CONNECTION);
    }
  }
}
