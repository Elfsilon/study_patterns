import 'package:common/behavioural/visitor/lib/visitor.dart';

abstract class Person {
  Person(this.name);

  final String name;
  bool _license = false;

  bool get hasLicence => _license;

  void getLicense() => _license = true;

  void take(Weapon w) {
    if (_license && w.owner == name) {
      print("Now I have the weapon!");
    } else {
      print("I have no license");
    }
  } 

  void apply(PersonVisitor v) => v.visit(this);
}

class Weapon {
  Weapon();

  String? _ownerName;

  String get owner => _ownerName ?? "No owner";

  void changeOwner(String name) => _ownerName = name;
}