import 'package:auth_task/data/models/tokens.dart';
import 'package:auth_task/data/models/user.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'user_state.mapper.dart';

@MappableClass()
sealed class UserState with UserStateMappable {}

@MappableClass()
class UserUnauthorized extends UserState with UserUnauthorizedMappable {}

@MappableClass()
class UserAuthorized extends UserState with UserAuthorizedMappable {
  final User user;
  final Tokens? tokens;

  UserAuthorized({
    required this.user,
    this.tokens,
  });
}
