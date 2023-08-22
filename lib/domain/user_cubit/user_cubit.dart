import 'package:auth_task/core/log.dart';
import 'package:auth_task/data/models/tokens.dart';
import 'package:auth_task/data/models/user.dart';
import 'package:auth_task/domain/user_cubit/interfaces/i_user_cubit.dart';
import 'package:auth_task/domain/user_cubit/user_state.dart';

const _tag = "UserCubit";

class UserCubit extends IUserCubit {
  UserCubit() : super(UserUnauthorized());

  @override
  Future<void> logout() async {
    Log.d(_tag, "logout");
    emit(UserUnauthorized());
  }

  @override
  Future<void> updateTokens(Tokens tokens) async {
    Log.d(_tag, "updateTokens: tokens = $tokens");

    if (state is UserAuthorized) {
      emit((state as UserAuthorized).copyWith(tokens: tokens));
    }
  }

  @override
  Future<void> updateUser(User user) async {
    Log.d(_tag, "updateUser: user = $user");

    if (state is UserUnauthorized) {
      emit(UserAuthorized(user: user));
    } else if (state is UserAuthorized) {
      if (user.id != (state as UserAuthorized).user.id) {
        emit(UserAuthorized(user: user));
      } else {
        emit((state as UserAuthorized).copyWith(user: user));
      }
    }
  }
}
