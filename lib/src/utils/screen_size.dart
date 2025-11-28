import 'package:flutter/widgets.dart';

class ScreenSize {
  ScreenSize._();

  static late double height;
  static late double width;

  static void set(Size value) {
    height = value.height;
    width = value.width;
  }
}
