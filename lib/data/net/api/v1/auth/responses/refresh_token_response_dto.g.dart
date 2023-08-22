// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokenResponseDto _$RefreshTokenResponseDtoFromJson(
        Map<String, dynamic> json) =>
    RefreshTokenResponseDto(
      user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
      tokens: TokensDto.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RefreshTokenResponseDtoToJson(
        RefreshTokenResponseDto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'tokens': instance.tokens,
    };
