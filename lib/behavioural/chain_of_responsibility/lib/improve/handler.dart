import 'package:common/behavioural/chain_of_responsibility/lib/improve/middleware.dart';
import 'package:common/behavioural/chain_of_responsibility/lib/request.dart';

class RequestHandler {
  RequestHandler({ required this.middleware });

  final List<Middleware> middleware;

  void setNext(Middleware m) {
    middleware.add(m);
  }

  void handle(Request request) {
    for (final m in middleware) {
      m.handle(request);
    }
  }
}