import 'package:fpdart/fpdart.dart';

extension OptionExtensions<T> on Option<T> {
  B fold<B>(
    B Function() none,
    B Function(T value) some,
  ) {
    return match(none, some);
  }

  void when({
    required void Function() none,
    required void Function(T value) some,
  }) {
    fold(none, some);
  }

  void onNone(void Function() onNone) {
    when(none: onNone, some: (_) {});
  }

  void onSome(void Function(T value) onSome) {
    when(none: () {}, some: onSome);
  }

  T? get valueOrNull {
    T? result;

    onSome(
      (value) {
        result = value;
      },
    );

    return result;
  }
}

extension NullableOptionExtensions<T> on Option<T>? {
  bool get isNullOrNone => this == null || this!.isNone();

  void onNullOrNone(void Function() onNone) {
    if (isNullOrNone) {
      onNone();
    }
  }

  void when({
    required void Function() nullOrNone,
    required void Function(T value) some,
  }) {
    if (isNullOrNone) {
      nullOrNone();
    } else {
      // ignore: null_check_on_nullable_type_parameter
      some(this!.valueOrNull!);
    }
  }
}
