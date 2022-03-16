import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/screens.dart';

enum Screen { home, works, blog, contact }

class TabNotifier extends ChangeNotifier {
  Widget _currentScreen = const HomeScreen();

  Widget get currentScreen => _currentScreen;

  Screen _screen =Screen.home;

  Screen get screen => _screen;

  void updateCurrentScreen(BuildContext context, Screen screen) {
    _screen = screen;
    switch (screen) {
      case Screen.home:
        context.go('/home');
        _currentScreen = const HomeScreen();
        break;
      case Screen.works:
        context.go('/works');
        _currentScreen = const WorksScreen();
        break;
      case Screen.blog:
        context.go('/blog');
        _currentScreen = const BlogScreen();
        break;
      case Screen.contact:
        context.go('/contact');
        _currentScreen = const ContactScreen();
        break;
      default:
        context.go('/home');
        _currentScreen = const HomeScreen();
        break;
    }
    notifyListeners();
  }
}
