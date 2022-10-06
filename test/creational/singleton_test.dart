import 'package:common/creational/singleton.dart';
import 'package:test/test.dart';

void main() {
  test('classic singleton test', () async {
    final singleton1 = ClassicSingletonExample.getInstance();
    expect(singleton1.value, 0);
    singleton1.increment();
    expect(singleton1.value, 1);

    final singleton2 = ClassicSingletonExample.getInstance();
    expect(identical(singleton1, singleton2), true);
    expect(singleton2.value, 1);
  });

  test('dart singleton test', () async {
    final singleton1 = DartSingletonExample();
    expect(singleton1.value, 0);
    singleton1.increment();
    expect(singleton1.value, 1);

    final singleton2 = DartSingletonExample();
    expect(identical(singleton1, singleton2), true);
    expect(singleton2.value, 1);
  });

  test('dart light singleton test', () async {
    final singleton1 = DartLightSingletonExample.instance;
    expect(singleton1.value, 0);
    singleton1.increment();
    expect(singleton1.value, 1);

    final singleton2 = DartLightSingletonExample.instance;
    expect(identical(singleton1, singleton2), true);
    expect(singleton2.value, 1);
  });
}