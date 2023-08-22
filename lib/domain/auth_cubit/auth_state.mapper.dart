// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'auth_state.dart';

class AuthStateMapper extends ClassMapperBase<AuthState> {
  AuthStateMapper._();

  static AuthStateMapper? _instance;
  static AuthStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateMapper._());
      AuthStateInitialMapper.ensureInitialized();
      AuthStateTypingMapper.ensureInitialized();
      AuthStateLoadingMapper.ensureInitialized();
      AuthStateAuthorizedMapper.ensureInitialized();
      AuthStateErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'AuthState';

  @override
  final Map<Symbol, Field<AuthState, dynamic>> fields = const {};

  static AuthState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('AuthState');
  }

  @override
  final Function instantiate = _instantiate;

  static AuthState fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<AuthState>(map));
  }

  static AuthState fromJson(String json) {
    return _guard((c) => c.fromJson<AuthState>(json));
  }
}

mixin AuthStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  AuthStateCopyWith<AuthState, AuthState, AuthState> get copyWith;
}

abstract class AuthStateCopyWith<$R, $In extends AuthState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  AuthStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class AuthStateInitialMapper extends ClassMapperBase<AuthStateInitial> {
  AuthStateInitialMapper._();

  static AuthStateInitialMapper? _instance;
  static AuthStateInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateInitialMapper._());
      AuthStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'AuthStateInitial';

  @override
  final Map<Symbol, Field<AuthStateInitial, dynamic>> fields = const {};

  static AuthStateInitial _instantiate(DecodingData data) {
    return AuthStateInitial();
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateInitial fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<AuthStateInitial>(map));
  }

  static AuthStateInitial fromJson(String json) {
    return _guard((c) => c.fromJson<AuthStateInitial>(json));
  }
}

mixin AuthStateInitialMappable {
  String toJson() {
    return AuthStateInitialMapper._guard(
        (c) => c.toJson(this as AuthStateInitial));
  }

  Map<String, dynamic> toMap() {
    return AuthStateInitialMapper._guard(
        (c) => c.toMap(this as AuthStateInitial));
  }

  AuthStateInitialCopyWith<AuthStateInitial, AuthStateInitial, AuthStateInitial>
      get copyWith => _AuthStateInitialCopyWithImpl(
          this as AuthStateInitial, $identity, $identity);
  @override
  String toString() {
    return AuthStateInitialMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateInitialMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return AuthStateInitialMapper._guard((c) => c.hash(this));
  }
}

extension AuthStateInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateInitial, $Out> {
  AuthStateInitialCopyWith<$R, AuthStateInitial, $Out>
      get $asAuthStateInitial =>
          $base.as((v, t, t2) => _AuthStateInitialCopyWithImpl(v, t, t2));
}

abstract class AuthStateInitialCopyWith<$R, $In extends AuthStateInitial, $Out>
    implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  AuthStateInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateInitial, $Out>
    implements AuthStateInitialCopyWith<$R, AuthStateInitial, $Out> {
  _AuthStateInitialCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateInitial> $mapper =
      AuthStateInitialMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  AuthStateInitial $make(CopyWithData data) => AuthStateInitial();

  @override
  AuthStateInitialCopyWith<$R2, AuthStateInitial, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthStateInitialCopyWithImpl($value, $cast, t);
}

class AuthStateTypingMapper extends ClassMapperBase<AuthStateTyping> {
  AuthStateTypingMapper._();

  static AuthStateTypingMapper? _instance;
  static AuthStateTypingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateTypingMapper._());
      AuthStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'AuthStateTyping';

  static String _$email(AuthStateTyping v) => v.email;
  static const Field<AuthStateTyping, String> _f$email =
      Field('email', _$email);
  static String _$password(AuthStateTyping v) => v.password;
  static const Field<AuthStateTyping, String> _f$password =
      Field('password', _$password);

  @override
  final Map<Symbol, Field<AuthStateTyping, dynamic>> fields = const {
    #email: _f$email,
    #password: _f$password,
  };

  static AuthStateTyping _instantiate(DecodingData data) {
    return AuthStateTyping(data.dec(_f$email), data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateTyping fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<AuthStateTyping>(map));
  }

  static AuthStateTyping fromJson(String json) {
    return _guard((c) => c.fromJson<AuthStateTyping>(json));
  }
}

mixin AuthStateTypingMappable {
  String toJson() {
    return AuthStateTypingMapper._guard(
        (c) => c.toJson(this as AuthStateTyping));
  }

  Map<String, dynamic> toMap() {
    return AuthStateTypingMapper._guard(
        (c) => c.toMap(this as AuthStateTyping));
  }

  AuthStateTypingCopyWith<AuthStateTyping, AuthStateTyping, AuthStateTyping>
      get copyWith => _AuthStateTypingCopyWithImpl(
          this as AuthStateTyping, $identity, $identity);
  @override
  String toString() {
    return AuthStateTypingMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateTypingMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return AuthStateTypingMapper._guard((c) => c.hash(this));
  }
}

extension AuthStateTypingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateTyping, $Out> {
  AuthStateTypingCopyWith<$R, AuthStateTyping, $Out> get $asAuthStateTyping =>
      $base.as((v, t, t2) => _AuthStateTypingCopyWithImpl(v, t, t2));
}

abstract class AuthStateTypingCopyWith<$R, $In extends AuthStateTyping, $Out>
    implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? email, String? password});
  AuthStateTypingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateTypingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateTyping, $Out>
    implements AuthStateTypingCopyWith<$R, AuthStateTyping, $Out> {
  _AuthStateTypingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateTyping> $mapper =
      AuthStateTypingMapper.ensureInitialized();
  @override
  $R call({String? email, String? password}) => $apply(FieldCopyWithData({
        if (email != null) #email: email,
        if (password != null) #password: password
      }));
  @override
  AuthStateTyping $make(CopyWithData data) => AuthStateTyping(
      data.get(#email, or: $value.email),
      data.get(#password, or: $value.password));

  @override
  AuthStateTypingCopyWith<$R2, AuthStateTyping, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthStateTypingCopyWithImpl($value, $cast, t);
}

class AuthStateLoadingMapper extends ClassMapperBase<AuthStateLoading> {
  AuthStateLoadingMapper._();

  static AuthStateLoadingMapper? _instance;
  static AuthStateLoadingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateLoadingMapper._());
      AuthStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'AuthStateLoading';

  @override
  final Map<Symbol, Field<AuthStateLoading, dynamic>> fields = const {};

  static AuthStateLoading _instantiate(DecodingData data) {
    return AuthStateLoading();
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateLoading fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<AuthStateLoading>(map));
  }

  static AuthStateLoading fromJson(String json) {
    return _guard((c) => c.fromJson<AuthStateLoading>(json));
  }
}

mixin AuthStateLoadingMappable {
  String toJson() {
    return AuthStateLoadingMapper._guard(
        (c) => c.toJson(this as AuthStateLoading));
  }

  Map<String, dynamic> toMap() {
    return AuthStateLoadingMapper._guard(
        (c) => c.toMap(this as AuthStateLoading));
  }

  AuthStateLoadingCopyWith<AuthStateLoading, AuthStateLoading, AuthStateLoading>
      get copyWith => _AuthStateLoadingCopyWithImpl(
          this as AuthStateLoading, $identity, $identity);
  @override
  String toString() {
    return AuthStateLoadingMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateLoadingMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return AuthStateLoadingMapper._guard((c) => c.hash(this));
  }
}

extension AuthStateLoadingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateLoading, $Out> {
  AuthStateLoadingCopyWith<$R, AuthStateLoading, $Out>
      get $asAuthStateLoading =>
          $base.as((v, t, t2) => _AuthStateLoadingCopyWithImpl(v, t, t2));
}

abstract class AuthStateLoadingCopyWith<$R, $In extends AuthStateLoading, $Out>
    implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  AuthStateLoadingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateLoadingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateLoading, $Out>
    implements AuthStateLoadingCopyWith<$R, AuthStateLoading, $Out> {
  _AuthStateLoadingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateLoading> $mapper =
      AuthStateLoadingMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  AuthStateLoading $make(CopyWithData data) => AuthStateLoading();

  @override
  AuthStateLoadingCopyWith<$R2, AuthStateLoading, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthStateLoadingCopyWithImpl($value, $cast, t);
}

class AuthStateAuthorizedMapper extends ClassMapperBase<AuthStateAuthorized> {
  AuthStateAuthorizedMapper._();

  static AuthStateAuthorizedMapper? _instance;
  static AuthStateAuthorizedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateAuthorizedMapper._());
      AuthStateMapper.ensureInitialized();
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
  final String id = 'AuthStateAuthorized';

  static User _$user(AuthStateAuthorized v) => v.user;
  static const Field<AuthStateAuthorized, User> _f$user = Field('user', _$user);
  static Tokens _$tokens(AuthStateAuthorized v) => v.tokens;
  static const Field<AuthStateAuthorized, Tokens> _f$tokens =
      Field('tokens', _$tokens);

  @override
  final Map<Symbol, Field<AuthStateAuthorized, dynamic>> fields = const {
    #user: _f$user,
    #tokens: _f$tokens,
  };

  static AuthStateAuthorized _instantiate(DecodingData data) {
    return AuthStateAuthorized(
        user: data.dec(_f$user), tokens: data.dec(_f$tokens));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateAuthorized fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<AuthStateAuthorized>(map));
  }

  static AuthStateAuthorized fromJson(String json) {
    return _guard((c) => c.fromJson<AuthStateAuthorized>(json));
  }
}

mixin AuthStateAuthorizedMappable {
  String toJson() {
    return AuthStateAuthorizedMapper._guard(
        (c) => c.toJson(this as AuthStateAuthorized));
  }

  Map<String, dynamic> toMap() {
    return AuthStateAuthorizedMapper._guard(
        (c) => c.toMap(this as AuthStateAuthorized));
  }

  AuthStateAuthorizedCopyWith<AuthStateAuthorized, AuthStateAuthorized,
          AuthStateAuthorized>
      get copyWith => _AuthStateAuthorizedCopyWithImpl(
          this as AuthStateAuthorized, $identity, $identity);
  @override
  String toString() {
    return AuthStateAuthorizedMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateAuthorizedMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return AuthStateAuthorizedMapper._guard((c) => c.hash(this));
  }
}

extension AuthStateAuthorizedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateAuthorized, $Out> {
  AuthStateAuthorizedCopyWith<$R, AuthStateAuthorized, $Out>
      get $asAuthStateAuthorized =>
          $base.as((v, t, t2) => _AuthStateAuthorizedCopyWithImpl(v, t, t2));
}

abstract class AuthStateAuthorizedCopyWith<$R, $In extends AuthStateAuthorized,
    $Out> implements AuthStateCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User> get user;
  TokensCopyWith<$R, Tokens, Tokens> get tokens;
  @override
  $R call({User? user, Tokens? tokens});
  AuthStateAuthorizedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateAuthorizedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateAuthorized, $Out>
    implements AuthStateAuthorizedCopyWith<$R, AuthStateAuthorized, $Out> {
  _AuthStateAuthorizedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateAuthorized> $mapper =
      AuthStateAuthorizedMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  TokensCopyWith<$R, Tokens, Tokens> get tokens =>
      $value.tokens.copyWith.$chain((v) => call(tokens: v));
  @override
  $R call({User? user, Tokens? tokens}) => $apply(FieldCopyWithData(
      {if (user != null) #user: user, if (tokens != null) #tokens: tokens}));
  @override
  AuthStateAuthorized $make(CopyWithData data) => AuthStateAuthorized(
      user: data.get(#user, or: $value.user),
      tokens: data.get(#tokens, or: $value.tokens));

  @override
  AuthStateAuthorizedCopyWith<$R2, AuthStateAuthorized, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AuthStateAuthorizedCopyWithImpl($value, $cast, t);
}

class AuthStateErrorMapper extends ClassMapperBase<AuthStateError> {
  AuthStateErrorMapper._();

  static AuthStateErrorMapper? _instance;
  static AuthStateErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStateErrorMapper._());
      AuthStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'AuthStateError';

  static String _$message(AuthStateError v) => v.message;
  static const Field<AuthStateError, String> _f$message =
      Field('message', _$message);

  @override
  final Map<Symbol, Field<AuthStateError, dynamic>> fields = const {
    #message: _f$message,
  };

  static AuthStateError _instantiate(DecodingData data) {
    return AuthStateError(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthStateError fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<AuthStateError>(map));
  }

  static AuthStateError fromJson(String json) {
    return _guard((c) => c.fromJson<AuthStateError>(json));
  }
}

mixin AuthStateErrorMappable {
  String toJson() {
    return AuthStateErrorMapper._guard((c) => c.toJson(this as AuthStateError));
  }

  Map<String, dynamic> toMap() {
    return AuthStateErrorMapper._guard((c) => c.toMap(this as AuthStateError));
  }

  AuthStateErrorCopyWith<AuthStateError, AuthStateError, AuthStateError>
      get copyWith => _AuthStateErrorCopyWithImpl(
          this as AuthStateError, $identity, $identity);
  @override
  String toString() {
    return AuthStateErrorMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AuthStateErrorMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return AuthStateErrorMapper._guard((c) => c.hash(this));
  }
}

extension AuthStateErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthStateError, $Out> {
  AuthStateErrorCopyWith<$R, AuthStateError, $Out> get $asAuthStateError =>
      $base.as((v, t, t2) => _AuthStateErrorCopyWithImpl(v, t, t2));
}

abstract class AuthStateErrorCopyWith<$R, $In extends AuthStateError, $Out>
    implements AuthStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message});
  AuthStateErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthStateErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthStateError, $Out>
    implements AuthStateErrorCopyWith<$R, AuthStateError, $Out> {
  _AuthStateErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthStateError> $mapper =
      AuthStateErrorMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  AuthStateError $make(CopyWithData data) =>
      AuthStateError(message: data.get(#message, or: $value.message));

  @override
  AuthStateErrorCopyWith<$R2, AuthStateError, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthStateErrorCopyWithImpl($value, $cast, t);
}
