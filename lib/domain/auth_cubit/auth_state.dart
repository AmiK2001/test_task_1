import 'package:auth_task/data/models/tokens.dart';
import 'package:auth_task/data/models/user.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'auth_state.mapper.dart';

@MappableClass()
sealed class AuthState with AuthStateMappable {}

@MappableClass()
class AuthStateInitial extends AuthState with AuthStateInitialMappable {}

@MappableClass()
class AuthStateTyping extends AuthState with AuthStateTypingMappable {
  final String email;
  final String password;

  AuthStateTyping(this.email, this.password);
}

@MappableClass()
class AuthStateLoading extends AuthState with AuthStateLoadingMappable {}

@MappableClass()
class AuthStateAuthorized extends AuthState with AuthStateAuthorizedMappable {
  final User user;
  final Tokens tokens;

  AuthStateAuthorized({required this.user, required this.tokens});
}

@MappableClass()
class AuthStateError extends AuthState with AuthStateErrorMappable {
  final String message;

  AuthStateError({required this.message});
}
