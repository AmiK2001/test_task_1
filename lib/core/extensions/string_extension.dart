extension NullableStringExtension on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrEmpty => !isNullOrEmpty;
  bool get isNullOrBlank => this == null || this!.trim().isEmpty;
  bool get isNotNullOrBlank => !isNullOrBlank;
}

extension StringExtension on String {
  /// To iterate a [String]: `"Hello".toIterable()`
  Iterable<String> toIterable() sync* {
    for (var i = 0; i < length; i++) {
      yield this[i];
    }
  }
}
