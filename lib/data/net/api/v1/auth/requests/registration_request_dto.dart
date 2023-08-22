import 'package:json_annotation/json_annotation.dart';

part 'registration_request_dto.g.dart';

@JsonSerializable()
class RegistrationRequestDto {
  final String email;
  final String nickname;
  final String phone;
  final String password;

  RegistrationRequestDto({
    required this.email,
    required this.nickname,
    required this.phone,
    required this.password,
  });

  factory RegistrationRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RegistrationRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RegistrationRequestDtoToJson(this);
}
