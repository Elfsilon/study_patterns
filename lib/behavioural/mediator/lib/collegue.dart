import 'package:common/behavioural/mediator/lib/mediator.dart';
import 'package:common/behavioural/mediator/lib/utils.dart';

abstract class Collegue {
  const Collegue(this.mediator, this.name);

  final Mediator mediator;
  final String name;

  void send(dynamic message) {
    mediator.send(message, this);
  }

  void onMessage(dynamic message, Collegue sender) {
    print("[$name] got the message $message from ${sender.name}");
  }
}

class Logger extends Collegue {
  const Logger(super.mediator, super.name);

  @override
  void onMessage(message, Collegue sender) {
    print("[Logger] ${sender.name} sent $message");
  }
}

class AuthService extends Collegue {
  const AuthService(super.mediator, super.name);

  void auth(String login, String password) {
    UserData? message;
    if (login == "admin" && password == "1234") {
      message =
          UserData(login: login, lastAuthTime: DateTime.now(), status: true);
    } else {
      message = UserData(
          login: login,
          lastAuthTime: DateTime.now(),
          status: false,
          reason: "incorrect login or password");
    }
    send(message);
  }
}

class StatisticsService extends Collegue {
  StatisticsService(super.mediator, super.name);

  void _commit(UserData data) {
    print("[$name] commit user data to the log file: ${data.toString()}");
  }

  @override
  void onMessage(dynamic message, Collegue sender) {
    print("[$name] got the message $message from ${sender.name}");
    if (sender.name == ServiceNames.authService) {
      if (message is UserData) {
        _commit(message);
      }
    }
  }
}
