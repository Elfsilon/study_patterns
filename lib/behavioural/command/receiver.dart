// Receiver interface
abstract class Printer {
  void printMessage(String message);
}

class ShellPrinter implements Printer {
  @override
  void printMessage(String message) => print("[Shell] $message");
}

class StudyPrinter implements Printer {
  @override
  void printMessage(String message) => print("[Study] $message");
}