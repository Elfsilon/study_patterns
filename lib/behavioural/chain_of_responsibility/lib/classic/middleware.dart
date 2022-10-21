import 'package:common/behavioural/chain_of_responsibility/lib/classic/handler.dart';
import 'package:common/behavioural/chain_of_responsibility/lib/request.dart';

class InfoLoggerMiddleware extends RequestHandler {
  @override
  void handleRequest(Request request) {
    print("[INFO] ${request.data}");
  }
}

class WarningLoggerMiddleware extends RequestHandler {
  @override
  void handleRequest(Request request) {
    print("[WARNING] ${request.data}");
  }
}

class ErrorLoggerMiddleware extends RequestHandler {
  @override
  void handleRequest(Request request) {
    print("[ERROR] ${request.data}");
  }
}