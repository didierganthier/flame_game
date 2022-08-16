import 'package:flame/components.dart';

class AstronautWorld extends SpriteComponent with HasGameRef {
  @override
  Future<void>? onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('background.jpeg');
    size = sprite!.originalSize;
  }
}
