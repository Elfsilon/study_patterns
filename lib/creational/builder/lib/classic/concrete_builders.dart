import 'package:common/creational/builder/lib/classic/builder.dart';
import 'package:common/creational/builder/lib/classic/product.dart';

class StandartAcousticGuitarBuilder extends GuitarBuilder {
  @override
  GuitarBuilder setStrings() {
    instance.strings = 6;
    return this;
  }

  @override
  GuitarBuilder setFrets() {
    instance.frets = 21;
    return this;
  }

  @override
  GuitarBuilder setType() {
    instance.type = GuitarType.acoustic;
    return this;
  }
}

class ExtendedElectricGuitarBuilder extends GuitarBuilder {
  @override
  GuitarBuilder setStrings() {
    instance.strings = 7;
    return this;
  }

  @override
  GuitarBuilder setFrets() {
    instance.frets = 24;
    return this;
  }

  @override
  GuitarBuilder setType() {
    instance.type = GuitarType.electric;
    return this;
  }
}