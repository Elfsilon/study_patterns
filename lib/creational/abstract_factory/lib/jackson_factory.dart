import 'package:common/creational/abstract_factory/lib/abstract_factory.dart';

class JacksonFactory implements GuitarFactory {
  @override
  void createDeck() {
    print("create Jackson deck");
  }

  @override
  void createNeck() {
    print("create Jackson neck");
  }

  @override
  void createHardware() {
    print("create Jackson harware");
  }
}