import 'package:flutter/material.dart';

class SnackBarService {
  SnackBarService._();

  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  static void showSuccess(String message) {
    scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.green));
  }

  static void showError(String message) {
    scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
  }

  static void showErrorCustomed(Widget content) {
    scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: content));
  }
}
