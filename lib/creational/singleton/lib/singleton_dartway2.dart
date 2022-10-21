import 'package:common/creational/singleton/lib/base.dart';

class BaseClassSingleton extends BaseClass {
  static final BaseClassSingleton instance = BaseClassSingleton._internal();
  BaseClassSingleton._internal(): super(0);
}