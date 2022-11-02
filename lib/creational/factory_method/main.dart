import 'package:common/creational/factory_method/lib/classic/guitar.dart';
import 'package:common/creational/factory_method/lib/classic/guitar_factory.dart';
import 'package:common/creational/factory_method/lib/dart_way/guitar_factory.dart';

void main(List<String> args) {
  GuitarFactory shop = JacksonGuitarFactory();
  final jackson = shop.createGuitar();
  jackson.description();
  print(jackson is Guitar);

  final ibanez = DartGuitar.ibanez();
  ibanez.description();
  print(ibanez is DartGuitar);
}