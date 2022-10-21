import 'package:common/behavioural/chain_of_responsibility/lib/classic/middleware.dart';
import 'package:common/behavioural/chain_of_responsibility/lib/improve/handler.dart' as imprh;
import 'package:common/behavioural/chain_of_responsibility/lib/improve/middleware.dart' as imprm;
import 'package:common/behavioural/chain_of_responsibility/lib/request.dart';

void main(List<String> args) {
  final handler = InfoLoggerMiddleware()
    ..setNext(WarningLoggerMiddleware()
    ..setNext(ErrorLoggerMiddleware()));
      
  handler.handle(Request("some data"));

  final handler2 = imprh.RequestHandler(middleware: [
    imprm.InfoLoggerMiddleware(),
    imprm.WarningLoggerMiddleware(),
  ]);
  handler2.setNext(imprm.ErrorLoggerMiddleware());
  handler2.handle(Request("some data"));
}