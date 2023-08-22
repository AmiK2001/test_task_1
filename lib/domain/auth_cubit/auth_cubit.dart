import 'package:auth_task/core/extensions/either_extension.dart';
import 'package:auth_task/core/log.dart';
import 'package:auth_task/data/net/api/v1/auth/requests/authorization_request_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/requests/refresh_token_request_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/requests/registration_request_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/responses/authorization_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/responses/refresh_token_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/responses/registration_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/responses/user_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/tokens_dto.dart';
import 'package:auth_task/data/net/api/v1/response_error.dart';
import 'package:auth_task/data/net/api/v1/response_result.dart';
import 'package:auth_task/data/net/api/v1/rest_client_v1.dart';
import 'package:auth_task/domain/auth_cubit/auth_state.dart';
import 'package:auth_task/domain/auth_cubit/interfaces/i_auth_cubit.dart';
import 'package:auth_task/domain/user_cubit/interfaces/i_user_cubit.dart';

const _tag = "AuthCubit";

class AuthCubit extends IAuthCubit {
  final RestClientV1 _client;
  final IUserCubit _userCubit;

  AuthCubit({
    required RestClientV1 client,
    required IUserCubit userCubit,
  })  : _client = client,
        _userCubit = userCubit,
        super(AuthStateInitial());

  Future<void> _handleResponseError(ResponseError error) async {
    final errorMessage = switch (error) {
      (ServerResponseError serverError) => serverError.error.message,
      (UnknownResponseError unknownError) => unknownError.exception.toString(),
    };

    emit(AuthStateError(message: errorMessage));
  }

  @override
  ResponseResult<AuthorizationResponseDto> authorize(
      AuthorizationRequestDto request) {
    Log.d(_tag, "authorize: request = $request");

    emit(AuthStateLoading());

    return _client
        .authorization(request)
        .toResult()
        .onFailure(_handleResponseError)
        .onSuccess((result) async {
      emit(
        AuthStateAuthorized(
          user: result.user.toUserModel(),
          tokens: result.tokens.toTokensModel(),
        ),
      );

      await _userCubit.updateUser(result.user.toUserModel());
      await _userCubit.updateTokens(result.tokens.toTokensModel());
    });
  }

  @override
  ResponseResult<UserResponseDto> getProfile() {
    Log.d(_tag, "getProfile");

    return _client.getProfile().toResult();
  }

  @override
  ResponseResult<RefreshTokenResponseDto> refreshToken(
      RefreshTokenRequestDto request) {
    Log.d(_tag, "refreshToken: request = $request");

    return _client.refreshToken(request).toResult().onSuccess((result) async {
      await _userCubit.updateUser(result.user.toUserModel());
      await _userCubit.updateTokens(result.tokens.toTokensModel());
    });
  }

  @override
  ResponseResult<RegistrationResponseDto> register(
      RegistrationRequestDto request) {
    Log.d(_tag, "register: request = $request");

    emit(AuthStateLoading());

    return _client
        .registration(request)
        .toResult()
        .onFailure(_handleResponseError)
        .onSuccess(
      (result) async {
        emit(
          AuthStateAuthorized(
            user: result.user.toUserModel(),
            tokens: result.tokens.toTokensModel(),
          ),
        );

        await _userCubit.updateUser(result.user.toUserModel());
        await _userCubit.updateTokens(result.tokens.toTokensModel());
      },
    );
  }
}
