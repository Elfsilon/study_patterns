import 'package:common/creational/abstract_factory/lib/abstract_factory.dart';

class IbanezFactory implements GuitarFactory {
  @override
  void createDeck() {
    print("create Ibanez deck");
  }

  @override
  void createNeck() {
    print("create Ibanez neck");
  }

  @override
  void createHardware() {
    print("create Ibanez harware");
  }
}