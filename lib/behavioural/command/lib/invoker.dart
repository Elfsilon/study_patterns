import 'package:common/behavioural/command/lib/command.dart';

// Invoker class
class Shell {
  final commands = <String, Command>{};

  void registerCommand(String name, Command command) {
    commands[name] = command;
  }

  void execute(String commandName) {
    if (!commands.containsKey(commandName)) throw StateError("no command registered for $commandName");
    commands[commandName]!.execute();
  }
}