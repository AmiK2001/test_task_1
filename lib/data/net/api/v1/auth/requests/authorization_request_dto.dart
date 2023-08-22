import 'package:json_annotation/json_annotation.dart';

part 'authorization_request_dto.g.dart';

@JsonSerializable()
class AuthorizationRequestDto {
  final String email;
  final String password;

  AuthorizationRequestDto({
    required this.email,
    required this.password,
  });

  factory AuthorizationRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorizationRequestDtoToJson(this);
}
