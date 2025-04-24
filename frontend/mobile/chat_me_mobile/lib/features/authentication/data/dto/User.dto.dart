import 'package:chat_me_mobile/features/authentication/domain/vo/User.vo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'User.dto.freezed.dart';
part 'User.dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    String? uid,
    String? name,
    String? email,
    String? status,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromDomain(UserVo vo) {
    return UserDto(
      uid: vo.uid,
      name: vo.name,
      email: vo.email,
      status: vo.status,
    );
  }
  Map<String, dynamic> toPersistence() {
    return <String, dynamic>{
      'uid': uid,
      'name': name,
      'email': email,
      'status': status,
    };
  }
}
