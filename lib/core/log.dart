import 'package:logger/logger.dart';

class Log {
  static final _logger = Logger(printer: SimplePrinter());

  static e(String tag, String message) {
    return _logger.e("$tag: $message");
  }

  static d(String tag, String message) {
    return _logger.d("$tag: $message");
  }
}
