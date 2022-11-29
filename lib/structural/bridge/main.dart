import 'package:common/structural/bridge/lib/bridge.dart';

void main() {
  final circle = Circle(color: MutedColor());
  final square = Square(color: SolidColor());

  circle.draw();
  circle.color.fill();
  square.draw();
}
