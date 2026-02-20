import 'package:flutter/material.dart';

class GlobalContextService {
  GlobalContextService._();

  static final navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext get value => navigatorKey.currentContext!;
}
