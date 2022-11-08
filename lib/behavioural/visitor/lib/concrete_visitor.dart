import 'package:common/behavioural/visitor/lib/component.dart';
import 'package:common/behavioural/visitor/lib/concrete_component.dart';
import 'package:common/behavioural/visitor/lib/visitor.dart';

class LicenseProvider implements PersonVisitor {
  @override
  void visit(Person p) {
    if (p is Officer) {
      p.getLicense();
      print("This officer now can use the weapon");
    } else {
      print("To get license citizens need to receive special training first");
    }
  }
}