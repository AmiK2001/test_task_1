// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizationResponseDto _$AuthorizationResponseDtoFromJson(
        Map<String, dynamic> json) =>
    AuthorizationResponseDto(
      user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
      tokens: TokensDto.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthorizationResponseDtoToJson(
        AuthorizationResponseDto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'tokens': instance.tokens,
    };
