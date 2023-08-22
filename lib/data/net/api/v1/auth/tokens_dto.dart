import 'package:auth_task/data/models/tokens.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tokens_dto.g.dart';

@JsonSerializable()
class TokensDto {
  final String accessToken;
  final String refreshToken;

  TokensDto({
    required this.accessToken,
    required this.refreshToken,
  });

  factory TokensDto.fromJson(Map<String, dynamic> json) =>
      _$TokensDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TokensDtoToJson(this);
}

extension TokensDtoExtension on TokensDto {
  Tokens toTokensModel() => Tokens(
        accessToken: accessToken,
        refreshToken: refreshToken,
      );
}
