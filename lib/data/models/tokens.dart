import 'package:dart_mappable/dart_mappable.dart';

part 'tokens.mapper.dart';

@MappableClass()
class Tokens with TokensMappable {
  final String accessToken;
  final String refreshToken;

  Tokens({
    required this.accessToken,
    required this.refreshToken,
  });
}
