import 'package:auth_task/data/net/api/v1/auth/responses/user_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/tokens_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_response_dto.g.dart';

@JsonSerializable()
class RefreshTokenResponseDto {
  final UserResponseDto user;
  final TokensDto tokens;

  RefreshTokenResponseDto({
    required this.user,
    required this.tokens,
  });

  factory RefreshTokenResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenResponseDtoToJson(this);
}
