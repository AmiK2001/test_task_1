import 'package:dart_mappable/dart_mappable.dart';

part 'user.mapper.dart';

@MappableClass()
class User with UserMappable {
  final int id;
  final String email;
  final String nickname;

  User({
    required this.id,
    required this.email,
    required this.nickname,
  });
}
