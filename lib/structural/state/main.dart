import 'package:common/structural/state/lib/resourse.dart';
import 'package:common/structural/state/lib/resourse_state.dart';

void main(List<String> args) async {
  final resourse = Resourse();
  Future.delayed(const Duration(seconds: 1), () => resourse.setState(Enabled()));

  try {
    resourse.state.getData();
  } catch (e) {
    print(e);
  }

  await Future.delayed(const Duration(seconds: 1));
  final data = resourse.state.getData();
  print(data);
}