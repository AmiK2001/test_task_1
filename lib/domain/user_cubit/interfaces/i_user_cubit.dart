import 'package:auth_task/data/models/tokens.dart';
import 'package:auth_task/data/models/user.dart';
import 'package:auth_task/domain/user_cubit/user_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

abstract class IUserCubit extends HydratedCubit<UserState> {
  IUserCubit(super.initialState);

  Future<void> updateUser(User user);
  Future<void> updateTokens(Tokens tokens);
  Future<void> logout();

  @override
  Map<String, dynamic>? toJson(UserState state) {
    return state.toMap();
  }

  @override
  UserState? fromJson(Map<String, dynamic> json) {
    return UserStateMapper.fromMap(json);
  }
}
