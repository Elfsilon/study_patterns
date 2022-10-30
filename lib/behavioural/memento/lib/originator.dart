import 'package:common/behavioural/memento/lib/memento.dart';

abstract class PlayerOriginator {
  PlayerState getState();
  setState(PlayerState state);
}

class Player implements PlayerOriginator {
  Player({
    required this.id,
  });

  final int id;
  int _level = 1;
  int _health = 120;
  int _experience = 0;

  int get level => _level;
  int get health => _health;
  int get experience => _experience;

  void takeDamage(int damage) {
    if (_health > 0) {
      _health -= damage;
      if (_health < 0) {
        _health = 0;
      }
    } else {
      print("Player $id is dead");
    }
  }

  void heal(int value) {
    if (health < 120) {
      _health += value;
    }
  }

  @override
  PlayerState getState() => PlayerState(
    id: id,
    health: _health,
    level: _level,
    experience: _experience,
  );

  @override
  setState(PlayerState state) {
    _level = state.level;
    _health = state.health;
    _experience = state.experience;
  }
}

class Magician extends Player {
  Magician({
    required super.id
  });

  final int _fireballDamage = 40;

  void castFireball(Player player) {
    player.takeDamage(_fireballDamage * _level);
  }
}

class NPC extends Player {
  NPC({
    required super.id
  });

  final int _damage = 25;

  void dealDamage(Player player) {
    player.takeDamage(_damage);
  }
}