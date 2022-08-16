import 'package:flame/components.dart';

class AstronautPlayer extends SpriteComponent with HasGameRef {
  @override
  Future<void>? onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('astronaut.png');
  }
}
