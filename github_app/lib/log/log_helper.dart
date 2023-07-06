import 'package:logger/logger.dart';

class LogHelper {
  static final _logger = Logger(
      printer: HybridPrinter(PrettyPrinter(colors: false, printTime: true),
          debug: PrettyPrinter(colors: false, printTime: true),
          error: PrettyPrinter(colors: false, printTime: true),
          info: SimplePrinter(colors: false, printTime: true),
          warning: SimplePrinter(colors: false, printTime: true)),
      level: Level.debug);

  static void debug(String message) {
    _logger.d(message);
  }

  static void err(String message, Object error) {
    _logger.e(message, "$error");
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void verbose(String message) {
    _logger.v(message);
  }
}
