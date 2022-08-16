import 'package:flame/components.dart';

class AstronautPlayer extends SpriteComponent with HasGameRef {
  AstronautPlayer() : super(size: Vector2.all(100.0));
  @override
  Future<void>? onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('astronaut.png');
    position = gameRef.size / 2;
  }
}
