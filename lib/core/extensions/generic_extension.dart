// ignore_for_file: null_check_on_nullable_type_parameter

import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

import 'either_extension.dart';

T it<T>(T value) => value;

R let<R>(R Function() function) => function();
C Function(A) composeRL<A, B, C>(C Function(B) f, B Function(A) g) =>
    (x) => f(g(x));
C Function(A) composeLR<A, B, C>(B Function(A) f, C Function(B) g) =>
    composeRL(g, f);

extension GenericExtension<T> on T {
  MaterialStateProperty<T> get materialStateProperty =>
      MaterialStateProperty.all(this);
  String toTag() => (T).toString();

  Future<T> toFuture() => Future.value(this);

  Either<T, C> toFailure<C>() => fail(this);
  Either<L, T> toSuccess<L>() => success(this);
}

extension NullableGenericExtension<T> on T? {
  int compareToNullable(T? b, int Function(T, T) compare) {
    if (this == null && b == null) {
      return 0;
    } else if (this == null && b != null) {
      return 1;
    } else if (this != null && b == null) {
      return -1;
    } else {
      return compare(this!, b!);
    }
  }

  S fold<S>({
    required S Function() onNull,
    required S Function(T value) onSome,
  }) {
    if (this == null) {
      return onNull();
    } else {
      return onSome(this!);
    }
  }

  bool isOneOf(List<Object?> values) {
    return values.any((it) => it == this);
  }
}

extension ScopeFunctionExtension<T> on T {
  R let<R>(R Function(T it) function) => function(this);
  T also<R>(void Function(T it) function) {
    function(this);
    return this;
  }
}

extension FuncExtension<A, B> on B Function(A) {
  C Function(A) compose<C>(C Function(B) g) => composeRL(g, this);
}

extension BooleanExtension on bool {
  T fold<T>({required T Function() onFalse, required T Function() onTrue}) {
    return this ? onTrue() : onFalse();
  }
}
