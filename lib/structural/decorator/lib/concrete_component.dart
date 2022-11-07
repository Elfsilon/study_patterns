import 'package:common/structural/decorator/lib/component.dart';

class ServerCode implements Code {
  @override
  String release() {
    return "Release of the server code";
  }
}

class MobileCode implements Code {
  @override
  String release() {
    return "Release of the mobile code";
  }
}

class FrontendCode implements Code {
  @override
  String release() {
    return "Release of the frontend code";
  }
}