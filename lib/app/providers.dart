import 'package:auth_task/data/net/api/v1/rest_client_v1.dart';
import 'package:auth_task/domain/auth_cubit/auth_cubit.dart';
import 'package:auth_task/domain/auth_cubit/interfaces/i_auth_cubit.dart';
import 'package:auth_task/domain/user_cubit/interfaces/i_user_cubit.dart';
import 'package:auth_task/domain/user_cubit/user_cubit.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';

final dio = Provider<Dio>(
  create: (_) {
    return Dio()
      ..interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          request: true,
          maxWidth: 90,
        ),
      );
  },
);

final userCubit = Provider<IUserCubit>(
  create: (context) => UserCubit(),
);

final restClientV1 = Provider<RestClientV1>(
  create: (context) => RestClientV1(context.read()),
);

final authCubit = Provider<IAuthCubit>(
  create: (context) => AuthCubit(
    client: context.read(),
    userCubit: context.read(),
  ),
);

final providers = [
  dio,
  userCubit,
  restClientV1,
  authCubit,
];
