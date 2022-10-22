import 'package:common/structural/proxy/lib/dungeon.dart';
import 'package:common/structural/proxy/lib/player.dart';

class HighLevelDungeonProxy implements Dungeon {
  // init demo isn't expensive
  final Dungeon _dungeonDemo = HighLevelDungeonDemo();
  // init this object is very expensive operation
  Dungeon? _dungeon;
  
  /// - Manage access to the [Dungeon]
  /// - init [Dungeon] only when it need
  /// - provide [DungeonDemo] instead of [Dungeon] to all players with access
  @override
  void enter(Player player) {
    if (player.level < 60) {
      if (player.hasDemoAccess) {
        _dungeonDemo.enter(player);
      } else {
        throw Exception("level of the player is too low for this dungeon, try to do push ups every morning");
      }
    } else {
      _dungeon ??= HighLevelDungeon();
      _dungeon!.enter(player);
    }
  }
}