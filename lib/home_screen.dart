import 'package:flutter/material.dart';
import 'package:letters_sounds/screens/parts/image_game/image_game_screen.dart';
import 'package:letters_sounds/widgets/game_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String route = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Звуки Буквы'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            GameCard(
              text: 'Звуки букв',
              icon: const Text(
                'A',
                style: TextStyle(fontSize: 30),
              ),
              onTap: (){
              },
            ),
            const SizedBox(height: 8),
            GameCard(
              text: 'Звуки слогов',
              icon: const Text(
                'AВ',
                style: TextStyle(fontSize: 30),
              ),
              onTap: (){
              },
            ),
            const SizedBox(height: 8),
            GameCard(
              text: 'Слова',
              icon: const Text(
                'ПА-У-ТИ-НА',
                style: TextStyle(fontSize: 30),
              ),
              onTap: (){
                Navigator.of(context).pushNamed(ImageGameScreen.route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
