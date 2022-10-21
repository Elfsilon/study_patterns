import 'package:common/behavioural/chain_of_responsibility/lib/request.dart';

abstract class RequestHandler {
  RequestHandler? _next;

  void setNext(RequestHandler nextHandler) {
    _next = nextHandler;
  }

  void handle(Request request) {
    handleRequest(request);
    if (_next != null) {
       _next!.handle(request);
    }
  }

  void handleRequest(Request request);
}