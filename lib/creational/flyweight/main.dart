import 'package:common/creational/flyweight/lib/flyweight.dart';

void onObtainedFromCache(int seed) {
  print("Seed $seed has been obtained from cache");
}

void main() {
  final seeds = [3564, 4444, 5656, 3564, 5656];
  final gameMaps =
      seeds.map((seed) => GameMapData.fromSeed(seed, onObtainedFromCache));
  gameMaps.forEach(print);
}
