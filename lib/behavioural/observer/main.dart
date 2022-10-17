import 'dart:async';

import 'package:common/behavioural/observer/lib/counter.dart';
import 'package:common/behavioural/observer/lib/widget_a.dart';
import 'package:common/behavioural/observer/lib/widget_b.dart';

void main() {
  final counter = Counter(0);

  final widgetA = WidgetA(name: "Widget_A");
  final widgetB = WidgetB(name: "Widget_B");

  counter.subscribe(widgetA);
  counter.subscribe(widgetB);

  counter.listen((state) {
    print("STATE CHANGED: $state");
  });

  final timer = Timer.periodic(const Duration(seconds: 1), (t) {
    counter.increment();
  });
  Timer(const Duration(seconds: 10), () => timer.cancel());
}