// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationResponseDto _$RegistrationResponseDtoFromJson(
        Map<String, dynamic> json) =>
    RegistrationResponseDto(
      user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
      tokens: TokensDto.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegistrationResponseDtoToJson(
        RegistrationResponseDto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'tokens': instance.tokens,
    };
