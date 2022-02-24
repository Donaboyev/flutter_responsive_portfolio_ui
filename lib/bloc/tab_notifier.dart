import 'package:flutter/material.dart';

enum Screen { home, works, blog, contact }

class TabNotifier extends ChangeNotifier {
  Screen _screen = Screen.home;

  Screen get screen => _screen;

  void changeScreen(Screen value) {
    _screen = value;
    notifyListeners();
  }
}
