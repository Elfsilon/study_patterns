import 'package:common/behavioural/template_method/lib/concrete_classes.dart';

void main(List<String> args) {
  final junior = JuniorDeveloper();
  final middle = MiddleDeveloper();
  final senior = SeniorDeveloper();

  print("Junior workflow:");
  junior.work();
  print("\nMiddle workflow:");
  middle.work();
  print("\nSenior workflow:");
  senior.work();
}