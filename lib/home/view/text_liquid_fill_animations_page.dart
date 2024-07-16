import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TextLiquidFillAnimationsPage extends StatelessWidget {
  final String title;

  const TextLiquidFillAnimationsPage(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: TextLiquidFill(
          text: 'HEY FLUTTER COM',
          waveColor: Colors.blueAccent,
          boxBackgroundColor: Colors.white,
          boxHeight: 50.0,
          textStyle: const TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
