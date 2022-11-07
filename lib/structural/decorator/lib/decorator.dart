import 'package:common/structural/decorator/lib/component.dart';

abstract class CodeDecorator implements Code {
  CodeDecorator(this.code);

  final Code code;
}