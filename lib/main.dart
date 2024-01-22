import 'package:flame/game.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'klondike_game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final game = KlondikeGame();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((value) => runApp(GameWidget(game: game)));
  
  runApp(GameWidget(game: game));
}