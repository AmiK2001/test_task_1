import 'dart:async';

import 'package:flutter/foundation.dart';

extension StreamToListanable<T> on Stream<T> {
  ListenableStream<T> toListenable() => ListenableStream(this);
}

class ListenableStream<T> extends ChangeNotifier {
  ListenableStream(Stream<T> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (T _) => notifyListeners(),
        );
  }

  late final StreamSubscription<T> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
