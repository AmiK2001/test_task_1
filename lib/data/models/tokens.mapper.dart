// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'tokens.dart';

class TokensMapper extends ClassMapperBase<Tokens> {
  TokensMapper._();

  static TokensMapper? _instance;
  static TokensMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TokensMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Tokens';

  static String _$accessToken(Tokens v) => v.accessToken;
  static const Field<Tokens, String> _f$accessToken =
      Field('accessToken', _$accessToken);
  static String _$refreshToken(Tokens v) => v.refreshToken;
  static const Field<Tokens, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken);

  @override
  final Map<Symbol, Field<Tokens, dynamic>> fields = const {
    #accessToken: _f$accessToken,
    #refreshToken: _f$refreshToken,
  };

  static Tokens _instantiate(DecodingData data) {
    return Tokens(
        accessToken: data.dec(_f$accessToken),
        refreshToken: data.dec(_f$refreshToken));
  }

  @override
  final Function instantiate = _instantiate;

  static Tokens fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<Tokens>(map));
  }

  static Tokens fromJson(String json) {
    return _guard((c) => c.fromJson<Tokens>(json));
  }
}

mixin TokensMappable {
  String toJson() {
    return TokensMapper._guard((c) => c.toJson(this as Tokens));
  }

  Map<String, dynamic> toMap() {
    return TokensMapper._guard((c) => c.toMap(this as Tokens));
  }

  TokensCopyWith<Tokens, Tokens, Tokens> get copyWith =>
      _TokensCopyWithImpl(this as Tokens, $identity, $identity);
  @override
  String toString() {
    return TokensMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TokensMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return TokensMapper._guard((c) => c.hash(this));
  }
}

extension TokensValueCopy<$R, $Out> on ObjectCopyWith<$R, Tokens, $Out> {
  TokensCopyWith<$R, Tokens, $Out> get $asTokens =>
      $base.as((v, t, t2) => _TokensCopyWithImpl(v, t, t2));
}

abstract class TokensCopyWith<$R, $In extends Tokens, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? accessToken, String? refreshToken});
  TokensCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TokensCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Tokens, $Out>
    implements TokensCopyWith<$R, Tokens, $Out> {
  _TokensCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Tokens> $mapper = TokensMapper.ensureInitialized();
  @override
  $R call({String? accessToken, String? refreshToken}) =>
      $apply(FieldCopyWithData({
        if (accessToken != null) #accessToken: accessToken,
        if (refreshToken != null) #refreshToken: refreshToken
      }));
  @override
  Tokens $make(CopyWithData data) => Tokens(
      accessToken: data.get(#accessToken, or: $value.accessToken),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken));

  @override
  TokensCopyWith<$R2, Tokens, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TokensCopyWithImpl($value, $cast, t);
}
