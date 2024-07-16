import 'package:flutter/material.dart';
import 'package:flutter_tutorial_animated_text/home/view/advanced_text_animations_page.dart';
import 'package:flutter_tutorial_animated_text/home/view/mixed_text_animations_page.dart';
import 'package:flutter_tutorial_animated_text/home/view/text_liquid_fill_animations_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animated Text Kit',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const TextLiquidFillAnimationsPage('TextLiquidFill Animations'),
                    ),
                  );
                },
                child: const Text('TextLiquidFill Animations'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MixedTextAnimationsPage('Mixed Text Animations Page'),
                    ),
                  );
                },
                child: const Text('Mixed Text Animations Page'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const AdvancedTextAnimationsPage(),
                    ),
                  );
                },
                child: const Text('Advanced Text Animations Page'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
