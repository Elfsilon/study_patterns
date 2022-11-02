import 'package:common/creational/builder/lib/classic/concrete_builders.dart';
import 'package:common/creational/builder/lib/classic/product.dart';
import 'package:common/creational/builder/lib/dart_way/product.dart';

void main(List<String> args) {
  final classic = createClassicWay();
  final dartWay = createDartWay();
  print(classic);
  print(dartWay);
}

Guitar createClassicWay() {
  return StandartAcousticGuitarBuilder().build();
}

GuitarDartWay createDartWay() {
  return GuitarDartWay()
    ..strings = 6
    ..frets = 21
    ..type = GuitarType.electric;
}