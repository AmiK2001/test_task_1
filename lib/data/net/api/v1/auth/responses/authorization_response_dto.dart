import 'package:auth_task/data/net/api/v1/auth/responses/user_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/tokens_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'authorization_response_dto.g.dart';

@JsonSerializable()
class AuthorizationResponseDto {
  final UserResponseDto user;
  final TokensDto tokens;

  AuthorizationResponseDto({
    required this.user,
    required this.tokens,
  });

  factory AuthorizationResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorizationResponseDtoToJson(this);
}
