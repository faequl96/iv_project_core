import 'package:flutter/material.dart';
import 'package:iv_project_core/iv_project_core.dart';

class AppSize {
  const AppSize._();

  static void set(MediaQueryData mediaQuery) {
    final size = mediaQuery.size;

    ScreenSize.set(size);
    // FontSize.set(size.width);
    SpaceSize.set(size.width);
    ShapeSize.set(size.width);
  }
}
