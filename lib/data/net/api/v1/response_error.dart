import 'package:auth_task/data/net/api/v1/auth/error_response_dto.dart';

sealed class ResponseError {}

class ServerResponseError extends ResponseError {
  final ErrorResponseDto error;

  ServerResponseError(this.error);
}

class UnknownResponseError extends ResponseError {
  final Exception exception;

  UnknownResponseError(this.exception);
}
