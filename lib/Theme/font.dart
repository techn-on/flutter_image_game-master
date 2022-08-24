import 'package:flutter/material.dart';

TextStyle homePageDeck() {
  return TextStyle(
    fontSize: 30,
    fontFamily: 'Cafe24Ohsquare',
    fontWeight: FontWeight.w700,
    height: 45 / 30,
    color: Color(0xffFFFFFF),
  );
}

TextStyle cardText() {
  return TextStyle(
    fontSize: 28,
    fontFamily: 'Cafe24Ohsquare',
    fontWeight: FontWeight.w700,
    height: 42 / 28,
    color: Color(0xff000000),
  );
}

TextStyle cardEndText() {
  return TextStyle(
    fontSize: 60,
    fontFamily: 'Cafe24Ohsquare',
    fontWeight: FontWeight.w700,
    height: 90 / 40,
    color: Color(0xffFFFFFF),
  );
}

TextStyle cafe24w700White(double size, double height) {
  return TextStyle(
    fontSize: size,
    fontFamily: 'Cafe24Ohsquare',
    fontWeight: FontWeight.w700,
    height: height / size,
    color: Color(0xffFFFFFF),
  );
}
