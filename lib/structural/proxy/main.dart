import 'package:common/structural/proxy/lib/dungeon_proxy.dart';
import 'package:common/structural/proxy/lib/player.dart';

void main(List<String> args) {
  final lowLevelPlayer = Player(10, false);
  final lowLevelPlayerWithAcceess = Player(10, true);
  final highLevelPlayer = Player(70, false);
  final highLevelPlayerWithAccess = Player(70, true);

  final dungeoun = HighLevelDungeonProxy();

  try {
    dungeoun.enter(lowLevelPlayer);
  } catch (e) {
    print(e);
  }
  dungeoun.enter(lowLevelPlayerWithAcceess);
  dungeoun.enter(highLevelPlayer);
  dungeoun.enter(highLevelPlayerWithAccess);
}