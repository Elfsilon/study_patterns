import 'package:common/behavioural/observer/lib/internal/observer.dart';

abstract class StatefullIntWidget with Observer<int> {
  const StatefullIntWidget();
  
  @override
  void onChange(int state) => build(state);

  String build(int state);
}