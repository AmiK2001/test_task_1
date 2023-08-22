// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'user_state.dart';

class UserStateMapper extends ClassMapperBase<UserState> {
  UserStateMapper._();

  static UserStateMapper? _instance;
  static UserStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserStateMapper._());
      UserUnauthorizedMapper.ensureInitialized();
      UserAuthorizedMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'UserState';

  @override
  final Map<Symbol, Field<UserState, dynamic>> fields = const {};

  static UserState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('UserState');
  }

  @override
  final Function instantiate = _instantiate;

  static UserState fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<UserState>(map));
  }

  static UserState fromJson(String json) {
    return _guard((c) => c.fromJson<UserState>(json));
  }
}

mixin UserStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  UserStateCopyWith<UserState, UserState, UserState> get copyWith;
}

abstract class UserStateCopyWith<$R, $In extends UserState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  UserStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class UserUnauthorizedMapper extends ClassMapperBase<UserUnauthorized> {
  UserUnauthorizedMapper._();

  static UserUnauthorizedMapper? _instance;
  static UserUnauthorizedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserUnauthorizedMapper._());
      UserStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'UserUnauthorized';

  @override
  final Map<Symbol, Field<UserUnauthorized, dynamic>> fields = const {};

  static UserUnauthorized _instantiate(DecodingData data) {
    return UserUnauthorized();
  }

  @override
  final Function instantiate = _instantiate;

  static UserUnauthorized fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<UserUnauthorized>(map));
  }

  static UserUnauthorized fromJson(String json) {
    return _guard((c) => c.fromJson<UserUnauthorized>(json));
  }
}

mixin UserUnauthorizedMappable {
  String toJson() {
    return UserUnauthorizedMapper._guard(
        (c) => c.toJson(this as UserUnauthorized));
  }

  Map<String, dynamic> toMap() {
    return UserUnauthorizedMapper._guard(
        (c) => c.toMap(this as UserUnauthorized));
  }

  UserUnauthorizedCopyWith<UserUnauthorized, UserUnauthorized, UserUnauthorized>
      get copyWith => _UserUnauthorizedCopyWithImpl(
          this as UserUnauthorized, $identity, $identity);
  @override
  String toString() {
    return UserUnauthorizedMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            UserUnauthorizedMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return UserUnauthorizedMapper._guard((c) => c.hash(this));
  }
}

extension UserUnauthorizedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserUnauthorized, $Out> {
  UserUnauthorizedCopyWith<$R, UserUnauthorized, $Out>
      get $asUserUnauthorized =>
          $base.as((v, t, t2) => _UserUnauthorizedCopyWithImpl(v, t, t2));
}

abstract class UserUnauthorizedCopyWith<$R, $In extends UserUnauthorized, $Out>
    implements UserStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  UserUnauthorizedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UserUnauthorizedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserUnauthorized, $Out>
    implements UserUnauthorizedCopyWith<$R, UserUnauthorized, $Out> {
  _UserUnauthorizedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserUnauthorized> $mapper =
      UserUnauthorizedMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  UserUnauthorized $make(CopyWithData data) => UserUnauthorized();

  @override
  UserUnauthorizedCopyWith<$R2, UserUnauthorized, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserUnauthorizedCopyWithImpl($value, $cast, t);
}

class UserAuthorizedMapper extends ClassMapperBase<UserAuthorized> {
  UserAuthorizedMapper._();

  static UserAuthorizedMapper? _instance;
  static UserAuthorizedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserAuthorizedMapper._());
      UserStateMapper.ensureInitialized();
      UserMapper.ensureInitialized();
      TokensMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'UserAuthorized';

  static User _$user(UserAuthorized v) => v.user;
  static const Field<UserAuthorized, User> _f$user = Field('user', _$user);
  static Tokens? _$tokens(UserAuthorized v) => v.tokens;
  static const Field<UserAuthorized, Tokens> _f$tokens =
      Field('tokens', _$tokens, opt: true);

  @override
  final Map<Symbol, Field<UserAuthorized, dynamic>> fields = const {
    #user: _f$user,
    #tokens: _f$tokens,
  };

  static UserAuthorized _instantiate(DecodingData data) {
    return UserAuthorized(user: data.dec(_f$user), tokens: data.dec(_f$tokens));
  }

  @override
  final Function instantiate = _instantiate;

  static UserAuthorized fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<UserAuthorized>(map));
  }

  static UserAuthorized fromJson(String json) {
    return _guard((c) => c.fromJson<UserAuthorized>(json));
  }
}

mixin UserAuthorizedMappable {
  String toJson() {
    return UserAuthorizedMapper._guard((c) => c.toJson(this as UserAuthorized));
  }

  Map<String, dynamic> toMap() {
    return UserAuthorizedMapper._guard((c) => c.toMap(this as UserAuthorized));
  }

  UserAuthorizedCopyWith<UserAuthorized, UserAuthorized, UserAuthorized>
      get copyWith => _UserAuthorizedCopyWithImpl(
          this as UserAuthorized, $identity, $identity);
  @override
  String toString() {
    return UserAuthorizedMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            UserAuthorizedMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return UserAuthorizedMapper._guard((c) => c.hash(this));
  }
}

extension UserAuthorizedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserAuthorized, $Out> {
  UserAuthorizedCopyWith<$R, UserAuthorized, $Out> get $asUserAuthorized =>
      $base.as((v, t, t2) => _UserAuthorizedCopyWithImpl(v, t, t2));
}

abstract class UserAuthorizedCopyWith<$R, $In extends UserAuthorized, $Out>
    implements UserStateCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User> get user;
  TokensCopyWith<$R, Tokens, Tokens>? get tokens;
  @override
  $R call({User? user, Tokens? tokens});
  UserAuthorizedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UserAuthorizedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserAuthorized, $Out>
    implements UserAuthorizedCopyWith<$R, UserAuthorized, $Out> {
  _UserAuthorizedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserAuthorized> $mapper =
      UserAuthorizedMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  TokensCopyWith<$R, Tokens, Tokens>? get tokens =>
      $value.tokens?.copyWith.$chain((v) => call(tokens: v));
  @override
  $R call({User? user, Object? tokens = $none}) => $apply(FieldCopyWithData(
      {if (user != null) #user: user, if (tokens != $none) #tokens: tokens}));
  @override
  UserAuthorized $make(CopyWithData data) => UserAuthorized(
      user: data.get(#user, or: $value.user),
      tokens: data.get(#tokens, or: $value.tokens));

  @override
  UserAuthorizedCopyWith<$R2, UserAuthorized, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserAuthorizedCopyWithImpl($value, $cast, t);
}
