// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokensDto _$TokensDtoFromJson(Map<String, dynamic> json) => TokensDto(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$TokensDtoToJson(TokensDto instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
