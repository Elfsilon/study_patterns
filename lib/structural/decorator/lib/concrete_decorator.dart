import 'package:common/structural/decorator/lib/decorator.dart';

class WithUnitTests extends CodeDecorator {
  WithUnitTests(super.code);

  @override
  String release() {
    return "${code.release()} with unit tests";
  }
}

class WithIntegrationTests extends CodeDecorator {
  WithIntegrationTests(super.code);

  @override
  String release() {
    return "${code.release()} with integration tests";
  }
}

class WithReview extends CodeDecorator {
  WithReview(super.code);

  @override
  String release() {
    return "${code.release()} with review";
  }
}

class WithCriticalBug extends CodeDecorator {
  WithCriticalBug(super.code);

  @override
  String release() {
    return "${code.release()} with critical bug";
  }
}