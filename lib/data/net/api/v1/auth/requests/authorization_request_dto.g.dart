// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizationRequestDto _$AuthorizationRequestDtoFromJson(
        Map<String, dynamic> json) =>
    AuthorizationRequestDto(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AuthorizationRequestDtoToJson(
        AuthorizationRequestDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
