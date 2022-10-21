import 'package:common/creational/singleton/lib/base.dart';

class BaseClassSingleton extends BaseClass {
  static BaseClassSingleton? _instance;

  BaseClassSingleton._internal(): super(0);

  static BaseClassSingleton getInstance() {
    _instance ??= BaseClassSingleton._internal();
    return _instance as BaseClassSingleton;
  }
}