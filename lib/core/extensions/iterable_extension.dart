import 'dart:math';

import 'package:collection/collection.dart' as collection;

extension NullableIterableExtension<T> on Iterable<T>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrEmpty => !isNullOrEmpty;
}

extension IterableExtension2<T> on Iterable<T> {
  Map<S, List<T>> groupBy<S>(S Function(T it) key) {
    return collection.groupBy<T, S>(this, key);
  }

  Iterable<S> select<S>(S Function(T it) toElement) => map(toElement);

  Iterable<T> get reversed => toList().reversed;

  Iterable<T> orderBy<S extends Comparable<S>>(S Function(T it) key) {
    return sortedBy(key);
  }

  String humanize({
    String separator = ", ",
    int limit = 0,
  }) {
    if (limit == 0) {
      return join(separator);
    }

    return take(limit).join(separator);
  }

  Iterable<T> orderByDescending<S extends Comparable<S>>(S Function(T it) key) {
    return orderBy(key).reversed;
  }

  T? getRandomOneOrNull() {
    return getRandom(1).firstOrNull;
  }

  List<List<T>> chunkBySize(int size) {
    final list = toList();
    final List<List<T>> chunks = [];
    final int len = length;
    for (var i = 0; i < len; i += size) {
      final int tempSize = i + size;
      chunks.add(list.sublist(i, tempSize > len ? len : tempSize));
    }

    return chunks;
  }

  Iterable<T> getRandom(int count) {
    final rnd = Random();
    final size = length;

    final indexes = <int>{};
    bool setIsFull = false;

    while (!setIsFull) {
      final index = rnd.nextInt(size - 1);

      if (!indexes.contains(index)) {
        indexes.add(index);
      }

      if (indexes.length == count) {
        setIsFull = true;
      }
    }
    return indexes.map((index) => elementAt(index));
  }
}

extension NumIterableExtension on Iterable<num> {
  double get averageOrZero {
    if (isEmpty) {
      return 0;
    }

    return average;
  }

  int get maxOrZero {
    return (maxOrNull ?? 0).toInt();
  }

  int get minOrZero {
    return (minOrNull ?? 0).toInt();
  }
}

extension ListNumExtension on List<num> {
  int get maxIndex {
    final max = this.max;

    return indexOf(max);
  }

  int get minIndex {
    final min = this.min;

    return indexOf(min);
  }
}
