import 'package:auth_task/data/net/api/v1/auth/requests/authorization_request_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/requests/refresh_token_request_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/requests/registration_request_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/responses/authorization_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/responses/refresh_token_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/responses/registration_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/responses/user_response_dto.dart';
import 'package:auth_task/data/net/api/v1/response_result.dart';
import 'package:auth_task/domain/auth_cubit/auth_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

abstract class IAuthCubit extends HydratedCubit<AuthState> {
  IAuthCubit(super.initialState);

  ResponseResult<UserResponseDto> getProfile();

  ResponseResult<AuthorizationResponseDto> authorize(
    AuthorizationRequestDto request,
  );

  ResponseResult<RegistrationResponseDto> register(
    RegistrationRequestDto request,
  );

  ResponseResult<RefreshTokenResponseDto> refreshToken(
    RefreshTokenRequestDto request,
  );

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toMap();
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthStateMapper.fromMap(json);
  }
}
