import 'dart:math';

import 'package:common/creational/flyweight/lib/utils.dart';

// Flyweight factory
class GameMapData {
  const GameMapData({
    required this.seed,
    required this.objects,
  });

  final int seed;
  final List<Object> objects;

  static final _gameMapDataCache = <int, GameMapData>{};

  // Flyweight factory method
  factory GameMapData.fromSeed(int seed, [Function(int seed)? onCacheObtain]) {
    if (_gameMapDataCache.containsKey(seed)) {
      onCacheObtain?.call(seed);
      return _gameMapDataCache[seed]!;
    } else {
      final gm = GameMapData.create(seed);
      _gameMapDataCache[seed] = gm;
      return gm;
    }
  }

  // Assumpt that creation of this object is very slow, enormous operation
  factory GameMapData.create(int seed) {
    // ...
    // Some heavy operations
    // ...
    final r = Random(seed);
    final obj = <Object>[];
    for (int i = 0; i < 10; i++) {
      final index = r.nextInt(GameUtils.object.length);
      obj.add(GameUtils.object[index]);
    }
    return GameMapData(seed: seed, objects: obj);
  }

  @override
  bool operator ==(Object other) =>
      other is GameMapData &&
      seed == other.seed &&
      objects.length == other.objects.length;

  @override
  int get hashCode => seed.hashCode + objects.hashCode;

  @override
  String toString() => "GameMapData: { seed: $seed, objects: $objects }\n";
}
