import 'package:flutter/material.dart';
import 'package:flutter_image_game/Theme/font.dart';
import 'package:flutter_image_game/Pages/GameSetPage.dart';

class CardCategoryLevel extends StatefulWidget {
  const CardCategoryLevel(
      {Key? key, required this.cardCategory, required this.miniTitle})
      : super(key: key);

  final String cardCategory;
  final String miniTitle;

  @override
  State<CardCategoryLevel> createState() =>
      _CardCategoryLevelState(cardCategory: cardCategory, miniTitle: miniTitle);
}

class _CardCategoryLevelState extends State<CardCategoryLevel> {
  _CardCategoryLevelState(
      {Key? key, required this.cardCategory, required this.miniTitle});

  late String cardCategory;
  late String miniTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1E23),
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 113),
                child: Image(image: AssetImage(miniTitle))),
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardCategoryButton(
                    cardCategory: cardCategory,
                    buttonIndex: '1',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CardCategoryButton(
                    cardCategory: cardCategory,
                    buttonIndex: '2',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CardCategoryButton(
                    cardCategory: cardCategory,
                    buttonIndex: '3',
                  ),
                ])
          ],
        ),
      ),
    );
  }
}

class CardCategoryButton extends StatelessWidget {
  CardCategoryButton(
      {Key? key, required this.cardCategory, required this.buttonIndex})
      : super(key: key);

  final String cardCategory;

  final String buttonIndex;
  late int deckIndex = int.parse(buttonIndex) - 1;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 240,
        height: 95,
        child: OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GameSetPage(
                        cardCategory: cardCategory,
                        deckIndex: deckIndex,
                      )),
            );
          },
          child: Stack(
            children: [
              SizedBox(
                width: 240,
                height: 95,
                child: Stack(
                  children: [
                    Ink.image(
                        image: const AssetImage(
                            'assets/images/cardCategoryLevel.png'),
                        fit: BoxFit.fill,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GameSetPage(
                                        cardCategory: cardCategory,
                                        deckIndex: deckIndex,
                                      )),
                            );
                          },
                        )),
                    Center(
                      child: Text(
                        '$cardCategory-$buttonIndex',
                        textAlign: TextAlign.center,
                        style: cafe24w700White(24, 36),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
