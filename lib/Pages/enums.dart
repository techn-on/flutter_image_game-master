import 'package:flutter/material.dart';

enum cardCategory { a, b }

extension HelloExtension on cardCategory {
  String get convertedKorText {
    switch (this) {
      case cardCategory.a:
        return "나는 A";
      case cardCategory.b:
        return "나는 B";
      default:
        return "";
    }
  }
}
