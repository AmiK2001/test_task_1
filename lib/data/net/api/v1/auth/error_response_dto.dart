import 'package:json_annotation/json_annotation.dart';

part 'error_response_dto.g.dart';

@JsonSerializable()
class ErrorResponseDto {
  final String name;
  final String message;
  final int status;
  final List<Object> errors;

  ErrorResponseDto({
    required this.name,
    required this.status,
    required this.errors,
    required this.message,
  });

  factory ErrorResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorResponseDtoToJson(this);

  static ErrorResponseDto? tryParse(Map<String, dynamic> json) {
    try {
      return ErrorResponseDto.fromJson(json);
    } catch (_) {
      return null;
    }
  }
}
