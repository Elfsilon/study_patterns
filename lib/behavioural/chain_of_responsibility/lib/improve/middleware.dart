import 'package:common/behavioural/chain_of_responsibility/lib/request.dart';

abstract class Middleware {
  void handle(Request request);
}

class InfoLoggerMiddleware implements Middleware {
  @override
  void handle(Request request) {
    print("[INFO] ${request.data}");
  }
}

class WarningLoggerMiddleware implements Middleware {
  @override
  void handle(Request request) {
    print("[WARNING] ${request.data}");
  }
}

class ErrorLoggerMiddleware implements Middleware {
  @override
  void handle(Request request) {
    print("[ERROR] ${request.data}");
  }
}