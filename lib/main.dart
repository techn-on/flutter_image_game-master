import 'package:flutter/material.dart';
import 'package:flutter_image_game/Pages/GameSetPage.dart';
import 'package:flutter_image_game/Pages/CardCategoryLevel.dart';
import 'package:flutter_image_game/Theme/font.dart';
import 'package:flutter_image_game/Pages/CardPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2B2B31),
        body: ListView(
          children: [
            Container(child: Image.asset('assets/images/브레이-킷.png')),
            Container(
              height: 1000,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                childAspectRatio: 160 / 240,
                children: <Widget>[
                  homePageDeckButton1(cardCategory: '브레이킷1'),
                  homePageDeckButton1(cardCategory: '브레이킷2'),
                  homePageDeckButton1(cardCategory: '대학생활'),
                  homePageDeckButton1(cardCategory: '연애'),
                  homePageDeckButton1(cardCategory: '술자리1'),
                  homePageDeckButton1(cardCategory: '술자리2'),
                  homePageDeckButton1(cardCategory: '조선시대'),
                  homePageDeckButton1(cardCategory: '동화'),
                  homePageDeckButton1(cardCategory: '무인도'),
                ],
              ),
            ),
          ],
        ));
  }
}

class homePageDeckButton1 extends StatelessWidget {
  homePageDeckButton1({Key? key, required this.cardCategory}) : super(key: key);

  String cardCategory;

  get miniTitle => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SizedBox(
            width: 160,
            height: 240,
            child: Stack(
              children: [
                Ink.image(
                    image: AssetImage('assets/images/homePageDeck.png'),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardCategoryLevel(
                                    cardCategory: cardCategory,
                                    miniTitle: miniTitle,
                                  )),
                        );
                      },
                    ),
                    fit: BoxFit.fill),
                Column(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Center(
                          child: Text(
                            cardCategory,
                            textAlign: TextAlign.center,
                            style: homePageDeck(),
                          ),
                        )),
                    Expanded(flex: 3, child: Container())
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
