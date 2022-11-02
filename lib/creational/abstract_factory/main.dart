import 'package:common/creational/abstract_factory/lib/abstract_factory.dart';
import 'package:common/creational/abstract_factory/lib/ibanez_factory.dart';
import 'package:common/creational/abstract_factory/lib/jackson_factory.dart';

void main(List<String> args) {
  GuitarFactory guitarFactory = JacksonFactory();
  guitarFactory.createDeck();
  guitarFactory.createNeck();

  guitarFactory = IbanezFactory();
  guitarFactory.createHardware();
}