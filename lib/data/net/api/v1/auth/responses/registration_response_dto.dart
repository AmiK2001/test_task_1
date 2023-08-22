import 'package:auth_task/data/net/api/v1/auth/responses/user_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/tokens_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'registration_response_dto.g.dart';

@JsonSerializable()
class RegistrationResponseDto {
  final UserResponseDto user;
  final TokensDto tokens;

  factory RegistrationResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseDtoFromJson(json);

  RegistrationResponseDto({
    required this.user,
    required this.tokens,
  });

  Map<String, dynamic> toJson() => _$RegistrationResponseDtoToJson(this);
}
