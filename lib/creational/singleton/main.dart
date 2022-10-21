import 'package:common/creational/singleton/lib/classic_singleton.dart' as classic;
import 'package:common/creational/singleton/lib/singleton_dartway1.dart' as dart_way;
import 'package:common/creational/singleton/lib/singleton_dartway2.dart' as dart_way2;

void main(List<String> args) {
  final classic1 = classic.BaseClassSingleton.getInstance();
  final classic2 = classic.BaseClassSingleton.getInstance();
  if (!identical(classic1, classic2)) throw Exception('Classic way singleton returned different instances');

  final dartWay1 = dart_way.BaseClassSingleton();
  final dartWay2 = dart_way.BaseClassSingleton();
  if (!identical(dartWay1, dartWay2)) throw Exception('Dart-way-singleton returned different instances');

  final anotherDartWay1 = dart_way2.BaseClassSingleton.instance;
  final anotherDartWay2 = dart_way2.BaseClassSingleton.instance;
  if (!identical(anotherDartWay1, anotherDartWay2)) throw Exception('Second dart-way-singleton returned different instances');
}