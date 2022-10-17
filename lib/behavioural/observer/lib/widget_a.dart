import 'package:common/behavioural/observer/lib/internal/widget.dart';

class WidgetA extends StatefullIntWidget {
  const WidgetA({
    required this.name,
  });

  final String name;

  @override
  String build(int state) {
    final str = "$name rebuilt with state = $state";
    print(str);
    return str;
  }
}