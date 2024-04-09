import 'package:logger/logger.dart';

class Log {
  static final shared = Log();
  late Logger _logger;

  Log() {
    _logger = Logger(
      // output: file_output.FileOutput(),
      printer: PrefixPrinter(
        PrettyPrinter(
            methodCount: 2, // number of method calls to be displayed
            errorMethodCount:
                8, // number of method calls if stacktrace is provided
            lineLength: 120, // width of the output
            colors: true, // Colorful log messages
            printEmojis: true, // Print an emoji for each log message
            printTime: false // Should each log print contain a timestamp
            ),
      ),
    );
  }

  static void info(dynamic msg, [dynamic error, StackTrace? stackTrace]) {
    Log.shared._logger.i(msg, error: error, stackTrace: stackTrace);
  }

  static void debug(dynamic msg, [dynamic error, StackTrace? stackTrace]) {
    Log.shared._logger.d(msg, error: error, stackTrace: stackTrace);
  }

  static void warn(dynamic msg, [dynamic error, StackTrace? stackTrace]) {
    Log.shared._logger.w(msg, error: error, stackTrace: stackTrace);
  }

  static void trace(dynamic msg, [dynamic error, StackTrace? stackTrace]) {
    Log.shared._logger.t(msg, error: error, stackTrace: stackTrace);
  }

  static void error(dynamic msg, [dynamic error, StackTrace? stackTrace]) {
    Log.shared._logger.e(msg, error: error, stackTrace: stackTrace);
  }
}
