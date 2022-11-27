import 'package:common/structural/composite/lib/utils.dart';

abstract class Widget {
  const Widget();

  void display(int padding);
}

class Text extends Widget {
  const Text({
    required this.text,
  });

  final String text;

  @override
  void display(int padding) {
    Printer.printWithPadding(padding, "Text: $text");
  }
}

class Button extends Widget {
  const Button({
    required this.text,
  });

  final String text;

  @override
  void display(int padding) {
    Printer.printWithPadding(padding, "Button: $text");
  }
}

class Column extends Widget {
  const Column({
    required this.children,
  });

  final List<Widget> children;

  @override
  void display(int padding) {
    Printer.printWithPadding(padding, "Column:");
    for (var child in children) {
      child.display(padding + 1);
    }
  }
}