// Command interface
import 'package:common/behavioural/command/lib/receiver.dart';

abstract class Command {
  Command({ required this.printer });
  
  final Printer printer;
  
  void execute();
}

class ShellSwitch implements Command {
  ShellSwitch(this.printer);

  @override
  final ShellPrinter printer;
  
  @override
  void execute() {
    printer.printMessage("switching");
  }
}

class ShellTeardown implements Command {
  ShellTeardown(this.printer);

  @override
  final ShellPrinter printer;
  
  @override
  void execute() {
    printer.printMessage("teardown");
  }
}

class StudyStart implements Command {
  StudyStart(this.printer);

  @override
  final StudyPrinter printer;
  
  @override
  void execute() {
    printer.printMessage("start");
  }
}

class StudyEnd implements Command {
  StudyEnd(this.printer);

  @override
  final StudyPrinter printer;
  
  @override
  void execute() {
    printer.printMessage("end");
  }
}