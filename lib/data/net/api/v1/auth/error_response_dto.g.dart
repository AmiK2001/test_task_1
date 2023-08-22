// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponseDto _$ErrorResponseDtoFromJson(Map<String, dynamic> json) =>
    ErrorResponseDto(
      name: json['name'] as String,
      status: json['status'] as int,
      errors:
          (json['errors'] as List<dynamic>).map((e) => e as Object).toList(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$ErrorResponseDtoToJson(ErrorResponseDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'status': instance.status,
      'errors': instance.errors,
    };
