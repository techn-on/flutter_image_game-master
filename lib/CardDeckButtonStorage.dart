import 'package:flutter/material.dart';
import 'package:flutter_image_game/Theme/font.dart';
import 'package:flutter_image_game/Pages/CardPage.dart';

Widget CardDeckButton4(int cardCount, String cardContent, String cardName) {
  String cardPath = 'assets/images/${cardName}.png';

  return Stack(
    children: [
      SizedBox(
        width: 150,
        height: 224,
        child: Stack(
          children: [
            Ink.image(
                image: AssetImage(cardPath),
                child: InkWell(
                  onTap: null,
                ),
                fit: BoxFit.fill),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: SizedBox(
          width: 150,
          height: 224,
          child: Stack(
            children: [
              Ink.image(
                  image: AssetImage(cardPath),
                  child: InkWell(
                    onTap: () {},
                  ),
                  fit: BoxFit.fill),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '${cardCount} 장',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  cardContent,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 150 / 100,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

Widget CardDeckButton5(int cardCount, String cardContent, String cardName) {
  String cardPath = 'assets/images/${cardName}.png';

  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: SizedBox(
          width: 150,
          height: 224,
          child: Stack(
            children: [
              Ink.image(
                  image: AssetImage(cardPath),
                  child: InkWell(
                    onTap: null,
                  ),
                  fit: BoxFit.fill),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: SizedBox(
          width: 150,
          height: 224,
          child: Stack(
            children: [
              Ink.image(
                  image: AssetImage(cardPath),
                  child: InkWell(
                    onTap: null,
                  ),
                  fit: BoxFit.fill),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5, left: 5),
        child: SizedBox(
          width: 150,
          height: 224,
          child: Stack(
            children: [
              Ink.image(
                  image: AssetImage(cardPath),
                  child: InkWell(
                    onTap: null,
                  ),
                  fit: BoxFit.fill),
            ],
          ),
        ),
      ),
      SizedBox(
        width: 150,
        height: 224,
        child: Stack(
          children: [
            Ink.image(
                image: AssetImage(cardPath),
                child: InkWell(
                  onTap: () {},
                ),
                fit: BoxFit.fill),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                '${cardCount} 장',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                cardContent,
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 150 / 100,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
