import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AdvancedTextAnimationsPage extends StatefulWidget {
  const AdvancedTextAnimationsPage({super.key});

  @override
  State<AdvancedTextAnimationsPage> createState() => _AdvancedTextAnimationsPageState();
}

class _AdvancedTextAnimationsPageState extends State<AdvancedTextAnimationsPage> {
  TextStyle textStyle(Color color) => TextStyle(fontSize: 30, color: color);
  double top1 = 200;
  double top2 = 420;
  bool showAnimation = false;
  double left = 500;
  bool type = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => setState(() => showAnimation = true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BuildAnimatedPositioned(
            top: 70,
            color: Colors.greenAccent,
            child: AnimatedTextKit(
              totalRepeatCount: 3,
              animatedTexts: [
                RotateAnimatedText(
                  'HeyFlutter.Com',
                  textStyle: textStyle(Colors.white),
                ),
              ],
              repeatForever: false,
            ),
          ),
          BuildAnimatedPositioned(
            top: top1,
            color: Colors.transparent,
            child: DefaultTextStyle(
              style: textStyle(Colors.blue),
              child: AnimatedTextKit(
                totalRepeatCount: 1,
                repeatForever: false,
                animatedTexts: [
                  TyperAnimatedText('Welcome to biigpiie.com', speed: const Duration(milliseconds: 100)),
                  TyperAnimatedText('The best channel for learning Flutter', speed: const Duration(milliseconds: 100)),
                  TyperAnimatedText('Hi, This is Reenta Kim', speed: const Duration(milliseconds: 100)),
                  TyperAnimatedText('Could you please, Give me a pasta?', speed: const Duration(milliseconds: 100)),
                ],
              ),
            ),
          ),
          showAnimation
              ? BuildAnimatedPositioned(
                  top: top2,
                  color: Colors.red,
                  height: 200,
                  child: DefaultTextStyle(
                    style: textStyle(Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Stay '),
                        AnimatedTextKit(
                          totalRepeatCount: 1,
                          animatedTexts: [
                            RotateAnimatedText('Hungry'),
                            RotateAnimatedText('Cool'),
                            RotateAnimatedText('Foolish'),
                          ],
                          onFinished: () => setState(() {
                            top1 = 420;
                            top2 = 200;
                            left = 0;
                            type = true;
                            debugPrint('onFinished Event called');
                          }),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
          BuildAnimatedPositioned(
            top: 530,
            color: Colors.indigo,
            height: 400,
            left: left,
            child: type
                ? DefaultTextStyle(
                    style: textStyle(Colors.white),
                    child: AnimatedTextKit(
                      totalRepeatCount: 1,
                      animatedTexts: [
                        TyperAnimatedText(
                          'Welcome to BiigPiie.com. The best Channel for learn Flutter.',
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                    ),
                  )
                : const Text(''),
          )
        ],
      ),
    );
  }
}

class BuildAnimatedPositioned extends StatelessWidget {
  final Widget child;
  final Color color;
  final double height;
  final double top;
  final double left;

  const BuildAnimatedPositioned({
    super.key,
    required this.child,
    required this.color,
    this.height = 100,
    this.top = 0,
    this.left = 0,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: top,
      left: left,
      width: MediaQuery.of(context).size.width,
      duration: const Duration(milliseconds: 500),
      child: Container(
        height: height,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: child,
      ),
    );
  }
}
