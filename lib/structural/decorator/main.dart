import 'package:common/structural/decorator/lib/concrete_component.dart';
import 'package:common/structural/decorator/lib/concrete_decorator.dart';

void main(List<String> args) {
  final mobileCode = WithUnitTests(WithIntegrationTests(WithReview(MobileCode())));
  print(mobileCode.release());

  final serverCode = WithReview(WithUnitTests(WithIntegrationTests(ServerCode())));
  print(serverCode.release());

  final frontendCode = WithReview(WithUnitTests(WithCriticalBug(FrontendCode())));
  print(frontendCode.release());
}