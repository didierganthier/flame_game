import 'package:flame/game.dart';
import 'package:flame_game/astronaut_game.dart';
import 'package:flutter/material.dart';

void main() {
  final game = AstronautGame();
  runApp(
    GameWidget(
      game: game,
    ),
  );
}
