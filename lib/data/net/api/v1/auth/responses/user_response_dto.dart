import 'package:auth_task/data/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_response_dto.g.dart';

@JsonSerializable()
class UserResponseDto {
  final int id;
  final String email;
  final String nickname;

  UserResponseDto({
    required this.id,
    required this.email,
    required this.nickname,
  });

  factory UserResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseDtoToJson(this);
}

extension UserResponseDtoExtension on UserResponseDto {
  User toUserModel() => User(id: id, email: email, nickname: nickname);
}
