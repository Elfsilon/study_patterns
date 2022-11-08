import 'package:common/behavioural/visitor/lib/component.dart';
import 'package:common/behavioural/visitor/lib/concrete_component.dart';
import 'package:common/behavioural/visitor/lib/concrete_visitor.dart';

void main(List<String> args) {
  final citizen = Citizen("Finn");
  final officer = Officer("Jake");
  final license = LicenseProvider();
  
  final weapon = Weapon();
  weapon.changeOwner(officer.name);

  citizen.take(weapon);
  officer.take(weapon);

  citizen.apply(license);
  officer.apply(license);

  citizen.take(weapon);
  officer.take(weapon);
}