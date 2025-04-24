import 'package:chat_me_mobile/core/logic/result.dart';
import 'package:chat_me_mobile/features/authentication/domain/vo/User.vo.dart';

abstract class UserRepository {
  Stream<Result<List<UserVo>>> getUsers();
  Future<Result<List<UserVo>>> searchUser(String query);
}
