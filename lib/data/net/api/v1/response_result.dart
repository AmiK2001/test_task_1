import 'package:auth_task/core/log.dart';
import 'package:auth_task/data/net/api/v1/auth/error_response_dto.dart';
import 'package:auth_task/data/net/api/v1/response_error.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

const _tag = "result";

typedef ResponseResult<T> = TaskEither<ResponseError, T>;

extension ResponseFutureToResponseResultExtension<T> on Future<T> {
  ResponseResult<T> toResult() {
    return TaskEither.tryCatch(() async => await this, (error, stackTrace) {
      if (error is Exception) {
        if (error is DioException) {
          final errorDto = ErrorResponseDto.tryParse(error.response?.data);

          if (errorDto != null) {
            Log.e(_tag, errorDto.message);
            return ServerResponseError(errorDto);
          }

          Log.e(_tag, error.message.toString());
          return UnknownResponseError(Exception(error.message));
        } else {
          Log.e(_tag, error.toString());
        }

        return UnknownResponseError(error);
      }

      return UnknownResponseError(Exception(error.toString()));
    });
  }
}
