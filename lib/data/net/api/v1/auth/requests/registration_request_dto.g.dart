// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationRequestDto _$RegistrationRequestDtoFromJson(
        Map<String, dynamic> json) =>
    RegistrationRequestDto(
      email: json['email'] as String,
      nickname: json['nickname'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RegistrationRequestDtoToJson(
        RegistrationRequestDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'nickname': instance.nickname,
      'phone': instance.phone,
      'password': instance.password,
    };
