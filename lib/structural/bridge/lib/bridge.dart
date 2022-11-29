// Interface (First layer abstraction)
abstract class Color {
  String fill();
}

class SolidColor implements Color {
  @override
  String fill() => "solid color";
}

class MutedColor implements Color {
  @override
  String fill() => "muted color";
}

// Abstraction (Second layer abstraction)
abstract class Shape {
  const Shape({
    required this.color,
  });

  // Bridge
  final Color color;

  void draw();
}

class Circle extends Shape {
  const Circle({required super.color});

  @override
  void draw() {
    print("Circle with ${color.fill()}");
  }
}

class Square extends Shape {
  const Square({required super.color});

  @override
  void draw() {
    print("Square with ${color.fill()}");
  }
}
