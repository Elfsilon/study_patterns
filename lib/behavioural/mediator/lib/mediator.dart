import 'package:common/behavioural/mediator/lib/collegue.dart';
import 'package:common/behavioural/mediator/lib/utils.dart';

abstract class Mediator {
  void send(dynamic message, Collegue sender);
}

class ServiceMediator implements Mediator {
  final Map<String, Collegue> _services = {};
  Map<String, Collegue> get services => _services;

  void registerService(Collegue service) {
    if (services.containsKey(service.name)) {
      throw Exception("Service ${service.name} is already registered");
    }
    _services[service.name] = service;
  }

  @override
  void send(dynamic message, Collegue sender) {
    if (sender.name == ServiceNames.authService) {
      _services[ServiceNames.statisticsService]?.onMessage(message, sender);
    }
    _services[ServiceNames.logger]?.onMessage(message, sender);
  }
}
