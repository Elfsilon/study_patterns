import 'package:common/behavioural/visitor/lib/component.dart';

abstract class PersonVisitor {
  void visit(Person p);
}