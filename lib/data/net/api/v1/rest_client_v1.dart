import 'package:auth_task/data/net/api/v1/auth/requests/authorization_request_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/requests/refresh_token_request_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/requests/registration_request_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/responses/authorization_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/responses/refresh_token_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/responses/registration_response_dto.dart';
import 'package:auth_task/data/net/api/v1/auth/responses/user_response_dto.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'rest_client_v1.g.dart';

@RestApi(baseUrl: "http://45.10.110.181:8080/api/v1")
abstract class RestClientV1 {
  factory RestClientV1(Dio dio, {String baseUrl}) = _RestClientV1;

  static const headers = <String, dynamic>{
    "Content-Type": "application/json",
    "Accept": "*",
    "Accept-Encoding": "gzip, deflate, br",
    "Connection": "keep-alive",
  };

  @Headers(headers)
  @GET("/auth/login/profile")
  Future<UserResponseDto> getProfile();

  @Headers(headers)
  @POST("/auth/login")
  Future<AuthorizationResponseDto> authorization(
    @Body() AuthorizationRequestDto request,
  );

  @Headers(headers)
  @POST("/auth/registration/customer/new")
  Future<RegistrationResponseDto> registration(
    @Body() RegistrationRequestDto request,
  );

  @Headers(headers)
  @POST("/auth/login/refresh")
  Future<RefreshTokenResponseDto> refreshToken(
    @Body() RefreshTokenRequestDto request,
  );
}
