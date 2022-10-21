import 'package:common/behavioural/command/command.dart';
import 'package:common/behavioural/command/invoker.dart';
import 'package:common/behavioural/command/receiver.dart';

void main() {
  final studyPrinter = StudyPrinter();
  final shellPrinter = ShellPrinter();

  final shellSwitchCommand = ShellSwitch(shellPrinter);
  final shellTeardownCommand = ShellTeardown(shellPrinter);
  final studyStartCommand = StudyStart(studyPrinter);
  final studyEndCommand = StudyEnd(studyPrinter);

  final shell = Shell();
  shell.registerCommand("shell-switch", shellSwitchCommand);
  shell.registerCommand("shell-teardown", shellTeardownCommand);
  shell.registerCommand("study-start", studyStartCommand);
  shell.registerCommand("study-end", studyEndCommand);

  shell.execute('shell-switch');
  shell.execute('shell-teardown');
  shell.execute('study-start');
  shell.execute('study-end');
}