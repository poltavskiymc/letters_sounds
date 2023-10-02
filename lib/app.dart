import 'package:flutter/material.dart';
import 'package:letters_sounds/home_screen.dart';
import 'package:letters_sounds/screens/parts/image_game/image_game_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        ImageGameScreen.route: (context) => const ImageGameScreen(),
      },
    );
  }
}
