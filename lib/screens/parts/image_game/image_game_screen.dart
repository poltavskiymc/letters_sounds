import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:letters_sounds/utils/IconsPng.dart';
import 'package:letters_sounds/widgets/card_with_text.dart';

class ImageGameScreen extends StatefulWidget {
  const ImageGameScreen({super.key});

  static const String route = '/image_game';

  @override
  State<ImageGameScreen> createState() => _ImageGameScreenState();
}

class _ImageGameScreenState extends State<ImageGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Звуки Буквы'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                  color: Colors.black,
                ),
                child: Image.asset(IconsPng.web),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardWithText(
                    text: "ПА",
                    onTap: () {
                      AssetsAudioPlayer().open(Audio('assets/audio/pa_1.aifc'));
                    },
                  ),
                  Text('-'),
                  CardWithText(
                      text: "У",
                      onTap: () {
                        AssetsAudioPlayer()
                            .open(Audio('assets/audio/y_1.aifc'));
                      }),
                  Text('-'),
                  CardWithText(
                      text: "ТИ",
                      onTap: () {
                        AssetsAudioPlayer()
                            .open(Audio('assets/audio/ti_1.aifc'));
                      }),
                  Text('-'),
                  CardWithText(
                      text: "НА",
                      onTap: () {
                        AssetsAudioPlayer()
                            .open(Audio('assets/audio/na_1.aifc'));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
