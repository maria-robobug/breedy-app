import 'package:logger/logger.dart';

class SimpleLogPrinter extends LogPrinter {
  final String className;
  SimpleLogPrinter(this.className);

  @override
  void log(LogEvent logEvent) {
    var emoji = PrettyPrinter.levelEmojis[logEvent.level];
    var message = logEvent.message;
    var stack = logEvent.stackTrace ?? "";

    println('$emoji [$className] $message\n $stack');
  }
}
