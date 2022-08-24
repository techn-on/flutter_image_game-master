import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_image_game/Pages/CardPage.dart';
import 'package:flutter_image_game/Theme/font.dart';

class CountdownPage extends StatefulWidget {
  const CountdownPage(
      {Key? key, required this.deckIndex, required this.cardCategory})
      : super(key: key);

  final int deckIndex;
  final String cardCategory;

  @override
  State<CountdownPage> createState() => _countdownPageState(
      deckIndex: this.deckIndex, cardCategory: this.cardCategory);
}

class _countdownPageState extends State<CountdownPage> {
  _countdownPageState(
      {Key? key, required this.deckIndex, required this.cardCategory});

  final int deckIndex;
  final String cardCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/ready.png"),
          fit: BoxFit.cover,
        )),
      ),
      Center(
        child: AnimatedTextKit(
          pause: Duration(microseconds: 0),
          totalRepeatCount: 1,
          animatedTexts: [
            ScaleAnimatedText(
              '브레이-킷\n타임',
              duration: const Duration(milliseconds: 1500),
              scalingFactor: 1,
              textAlign: TextAlign.center,
              textStyle: cafe24w700White(60, 90),
            ),
            ScaleAnimatedText(
              '3',
              duration: const Duration(milliseconds: 600),
              scalingFactor: 1,
              textAlign: TextAlign.center,
              textStyle: cafe24w700White(600, 900),
            ),
            ScaleAnimatedText(
              '2',
              duration: const Duration(milliseconds: 600),
              scalingFactor: 1,
              textAlign: TextAlign.center,
              textStyle: cafe24w700White(600, 900),
            ),
            ScaleAnimatedText(
              '1',
              duration: const Duration(milliseconds: 600),
              scalingFactor: 1,
              textAlign: TextAlign.center,
              textStyle: cafe24w700White(600, 900),
            ),
          ],
          onFinished: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => new CardPage(
                          deckIndex: this.deckIndex,
                          cardCategory: this.cardCategory,
                        )));
          },
        ),
      )
    ]));
  }
}
