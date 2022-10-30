import 'dart:math';

import 'package:common/behavioural/memento/lib/caretaker.dart';
import 'package:common/behavioural/memento/lib/originator.dart';

void main(List<String> args) {
  final history = FightHistory();

  final player = Magician(id: 228);
  final npc = NPC(id: 322);

  history.recordState(player);
  history.recordState(npc);
  while (player.health > 0 || npc.health > 0) {
    final playerTurn = Random().nextBool();
    if (playerTurn) {
      player.castFireball(npc);
    } else {
      npc.dealDamage(player);
    }
    history.recordState(player);
    history.recordState(npc);
  }
  print("Fight:");
  while (history.history.isNotEmpty) {
    final npc = history.history.pop();
    final player = history.history.pop();

    print("Player health: ${player.health}");
    print("NPC health: ${npc.health}");
    print("");
  }
}