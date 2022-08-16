import 'package:flame/game.dart';
import 'package:flame_game/astronaut_game.dart';
import 'package:flame_game/helpers/navigation_keys.dart';
import 'package:flutter/material.dart';

void main() {
  final game = AstronautGame();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            GameWidget(
              game: game,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: NavigationKeys(
                onDirectionChanged: game.onArrowKeyChanged,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
