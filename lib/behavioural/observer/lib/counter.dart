import 'package:common/behavioural/observer/lib/internal/observable.dart';

class Counter extends Observable<int> {
  Counter(super.initialState);

  void increment() {
    setState(() => state + 1);
  }

  void decrement() {
    setState(() => state - 1);
  }
}