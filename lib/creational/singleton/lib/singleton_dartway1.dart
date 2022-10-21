import 'package:common/creational/singleton/lib/base.dart';

class BaseClassSingleton extends BaseClass {
  static final BaseClassSingleton _instance = BaseClassSingleton._internal();

  BaseClassSingleton._internal(): super(0);

  factory BaseClassSingleton() {
    return _instance;
  }
}