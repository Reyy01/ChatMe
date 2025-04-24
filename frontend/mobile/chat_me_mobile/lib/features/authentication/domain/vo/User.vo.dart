import 'package:chat_me_mobile/core/logic/guard.dart';
import 'package:chat_me_mobile/core/logic/result.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/User.dto.dart';
import 'package:equatable/equatable.dart';

class UserVo extends Equatable {
  const UserVo({
    this.uid,
    this.name,
    this.email,
    this.status,
  });

  final String? uid;
  final String? name;
  final String? email;
  final String? status;

  @override
  List<Object?> get props => <dynamic>[uid, name];

  static Result<UserVo> create(UserDto dto) {
    final GuardResult guardResult = Guard.combine(<GuardResult>[
      Guard.againstNullOrUndefined(dto.uid, 'User Uid'),
      Guard.againstNullOrUndefined(dto.name, 'User Name'),
    ]);

    if (!guardResult.succeeded) {
      return Result<UserVo>.fail(error: guardResult.message);
    } else {
      return Result<UserVo>.ok(
          data: UserVo(
        uid: dto.uid,
        name: dto.name,
        email: dto.email,
        status: dto.status,
      ));
    }
  }
}
