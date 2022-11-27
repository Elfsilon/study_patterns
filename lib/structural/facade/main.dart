import 'package:common/structural/facade/lib/facade.dart';
import 'package:common/structural/facade/lib/services.dart';

void main() {
  final facade = Facade(
    service1: Service1(),
    service2: Service2(),
    service3: Service3(),
  );

  facade.doSth();
  facade.doSthElse();
}
