import 'package:core/core.dart';

class AppLogger {
  static AppLogger? _instance;
  final Logger _logger = Logger();

  factory AppLogger() {
    _instance ??= AppLogger._internal();
    return _instance!;
  }

  AppLogger._internal();

  void logVerbose(String message) {
    _logger.i(message);
  }

  void logDebug(String message) {
    _logger.d(message);
  }

  void logInfo(String message) {
    _logger.i(message);
  }

  void logWarning(String message) {
    _logger.w(message);
  }

  void logError(String message) {
    _logger.e(message);
  }
}
