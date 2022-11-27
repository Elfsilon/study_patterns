import 'package:common/structural/facade/lib/services.dart';

class Facade {
  const Facade({
    required this.service1,
    required this.service2,
    required this.service3,
  });

  final Service1 service1;
  final Service2 service2;
  final Service3 service3;

  void doSth() {
    service1.doSth();
    service3.doSth();
  }

  void doSthElse() {
    service1.doSth();
    service3.doSth();
    service2.doSth();
    service3.doSth();
  }
}
