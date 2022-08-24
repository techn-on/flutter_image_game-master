import 'package:flutter/material.dart';
import 'package:flutter_image_game/Pages/CardPage.dart';
import 'package:flutter_image_game/Pages/CountdownPage.dart';
import 'package:flutter_image_game/Theme/font.dart';

class GameSetPage extends StatefulWidget {
  const GameSetPage(
      {Key? key, required this.cardCategory, required this.deckIndex})
      : super(key: key);

  final String cardCategory;
  final int deckIndex;
  @override
  State<GameSetPage> createState() => _GameSetPageState(
      cardCategory: this.cardCategory, deckIndex: this.deckIndex);
}

class _GameSetPageState extends State<GameSetPage> {
  _GameSetPageState(
      {Key? key, required this.cardCategory, required this.deckIndex});

  final String cardCategory;
  final int deckIndex;
  String imagePath = "assets/images/startbutton.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/starthome.png"),
              fit: BoxFit.cover,
            )),
          ),
          Align(
            alignment: Alignment(0, 0.04434), // 정확하게 센터는 아니라서 계산 하고 넣은것.
            child: Center(
                child: Container(
                    width: 310,
                    height: 378,
                    child: Image(
                      image: AssetImage("assets/images/cardmove.gif"),
                      fit: BoxFit.cover,
                    ))),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 650),
              child: Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                height: 68,
                width: 340,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CountdownPage(
                                  deckIndex: this.deckIndex,
                                  cardCategory: this.cardCategory,
                                )),
                      );
                    },
                    child: Image.asset(imagePath)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
