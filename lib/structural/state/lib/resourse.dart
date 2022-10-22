import 'package:common/structural/state/lib/resourse_state.dart';

class Resourse {
  ResourseState _state = Disabled();

  ResourseState get state => _state;

  void setState(ResourseState state) {
    _state = state;
  }
}