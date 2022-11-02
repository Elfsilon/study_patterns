import 'package:common/creational/builder/lib/classic/product.dart';

abstract class GuitarBuilder {
  final instance = Guitar();

  Guitar build() {
    setStrings();
    setFrets();
    setType();
    return instance;
  }

  GuitarBuilder setStrings();
  GuitarBuilder setFrets();
  GuitarBuilder setType();
}