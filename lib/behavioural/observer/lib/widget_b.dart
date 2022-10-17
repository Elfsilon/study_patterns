import 'package:common/behavioural/observer/lib/internal/widget.dart';

class WidgetB extends StatefullIntWidget {
  const WidgetB({
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