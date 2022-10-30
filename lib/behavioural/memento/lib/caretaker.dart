import 'package:common/behavioural/memento/lib/memento.dart';
import 'package:common/behavioural/memento/lib/originator.dart';
import 'package:stack/stack.dart';

class FightHistory {
  Stack<PlayerState> _history = Stack();

  Stack<PlayerState> get history => _history;

  void recordState(PlayerOriginator player) {
    final state = player.getState();
    _history.push(state);
  }

  void popState(PlayerOriginator player) {
    final state = _history.pop();
    player.setState(state);
  }
}