import 'package:flutter/material.dart';

class GlobalContextService {
  GlobalContextService._();

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext get value => navigatorKey.currentContext!;
}
