import 'package:common/creational/factory_method/lib/classic/guitar.dart';

abstract class GuitarFactory {
  Guitar createGuitar();
}

class JacksonGuitarFactory extends GuitarFactory {
  @override
  Guitar createGuitar() => JacksonGuitar();
}

class IbanezGuitarFactory extends GuitarFactory {
  @override
  Guitar createGuitar() => IbanezGuitar();
}