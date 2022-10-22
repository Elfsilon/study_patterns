import 'package:common/structural/proxy/lib/player.dart';

abstract class Dungeon {
  void enter(Player player);
}

class HighLevelDungeon implements Dungeon {
  @override
  void enter(Player player) {
    print("Player $player entered in the dungeon");
  }
}

class HighLevelDungeonDemo implements Dungeon {
  @override
  void enter(Player player) {
    print("Player $player entered in the demo dungeon");
  }
}