import 'package:flutter/foundation.dart';

enum LogMode { debug, live }
enum LogLevel { info, warning, error, debug }

class Logger {
  static LogMode _logMode = LogMode.debug;

  // Singleton pattern implementation
  Logger._();
  static final Logger instance = Logger._();

  static void init(LogMode mode) {
    Logger._logMode = mode;
  }

  static void log(String message, {LogLevel level = LogLevel.debug, StackTrace? stackTrace, bool isSensitive = false}) {
    if (_logMode == LogMode.debug) {
      final formattedMessage = _formatMessage(message, level, stackTrace: stackTrace, isSensitive: isSensitive);
      debugPrint(formattedMessage);
    } else if (_logMode == LogMode.live) {
      // Optionally, send logs to a remote server or analytics platform
      // _sendToServer(formattedMessage);
    }
  }

  static String _formatMessage(String message, LogLevel level, {StackTrace? stackTrace, bool isSensitive = false}) {
    final now = DateTime.now();
    final timestamp = now.toIso8601String();
    final levelString = level.toString().split('.').last.toUpperCase();

    // Sanitize message if necessary
    if (isSensitive) {
      message = _sanitize(message);
    }

    // Format the message with color based on log level
    String coloredMessage = "";
    switch (level) {
      case LogLevel.info:
        coloredMessage = "\x1B[32m"; // Green
        break;
      case LogLevel.warning:
        coloredMessage = "\x1B[33m"; // Yellow
        break;
      case LogLevel.error:
        coloredMessage = "\x1B[31m"; // Red
        break;
      case LogLevel.debug:
      default:
        coloredMessage = "\x1B[34m"; // Blue
        break;
    }

    coloredMessage += "[$timestamp] [$levelString] $message";
    if (stackTrace != null) {
      coloredMessage += "\n$stackTrace";
    }
    coloredMessage += "\x1B[0m"; // Reset color

    return coloredMessage;
  }

  static String _sanitize(String message) {
    return message.replaceAll(RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}'), '[REDACTED EMAIL]')
        .replaceAll(RegExp(r'\d{3}-\d{2}-\d{4}'), '[REDACTED SSN]');
  }

  // Example method to send logs to a remote server (for live mode)
  static Future<void> _sendToServer(String message) async {
    // Implement logic to send logs to a remote server
  }
}

