import 'package:common/behavioural/mediator/lib/collegue.dart';
import 'package:common/behavioural/mediator/lib/mediator.dart';
import 'package:common/behavioural/mediator/lib/utils.dart';

void main() {
  final serviceMediator = ServiceMediator();

  final logger = Logger(serviceMediator, ServiceNames.logger);
  final authService = AuthService(serviceMediator, ServiceNames.authService);
  final statisticsService =
      StatisticsService(serviceMediator, ServiceNames.statisticsService);

  serviceMediator.registerService(logger);
  serviceMediator.registerService(authService);
  serviceMediator.registerService(statisticsService);

  authService.auth("notadmin", "333");
  statisticsService.send("My aim is to collect the data");
  authService.auth("admin", "1234");
  logger.send("I'm sending some broadcast message");
}
