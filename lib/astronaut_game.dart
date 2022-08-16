import 'package:flame/game.dart';
import 'package:flame_game/astronaut_player.dart';
import 'package:flame_game/astronaut_world.dart';
import 'package:flame_game/helpers/directions.dart';
import 'package:flutter/material.dart';

class AstronautGame extends FlameGame {
  AstronautPlayer _astronautPlayer = AstronautPlayer();
  AstronautWorld _astronautWorld = AstronautWorld();

  @override
  Future<void>? onLoad() async {
    super.onLoad();
    await add(_astronautWorld);
    await add(_astronautPlayer);
    _astronautPlayer.position = _astronautWorld.size / 1.5;
    camera.followComponent(
      _astronautPlayer,
      worldBounds: Rect.fromLTRB(
        0,
        0,
        _astronautWorld.size.x,
        _astronautWorld.size.y,
      ),
    );
  }

  onArrowKeyChanged(Direction direction) {
    _astronautPlayer.direction = direction;
  }
}
