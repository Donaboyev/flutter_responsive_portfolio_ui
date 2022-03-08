import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/screens.dart';

enum Screen { home, works, blog, contact }

class TabNotifier extends ChangeNotifier {
  Screen _screen = Screen.home;

  Screen get screen => _screen;

  Widget _currentScreen = const HomeScreen();

  Widget get currentScreen => _currentScreen;

  // void changeScreen(BuildContext context, Screen value) async {
  //   switch (value) {
  //     case Screen.home:
  //       if (_screen == Screen.home) {
  //         return;
  //       }
  //       context.router.popUntilRouteWithName(HomeRoute.name);
  //       break;
  //     case Screen.works:
  //       if (_screen == Screen.works) {
  //         return;
  //       }
  //       final result = await context.pushRoute(const WorksRoute());
  //       if(result!=null) {
  //         changeScreen(context, Screen.home);
  //       }
  //       break;
  //     case Screen.blog:
  //       final result = await context.pushRoute(const BlogRoute());
  //       if(result!=null) {
  //         changeScreen(context, Screen.home);
  //       }
  //       break;
  //     case Screen.contact:
  //       if (_screen == Screen.contact) {
  //         return;
  //       }
  //       final result = await context.pushRoute(const ContactRoute());
  //       debugPrint('=====> result : $result');
  //       if (result != null) {
  //         debugPrint('=====> result is not null');
  //         changeScreen(context, Screen.home);
  //       }
  //       break;
  //     default:
  //       final result = await context.pushRoute(const HomeRoute());
  //       debugPrint('=====> result : $result');
  //       if (result != null) {
  //         debugPrint('=====> result is not null');
  //         changeScreen(context, Screen.home);
  //       }
  //       break;
  //   }
  //   _screen = value;
  //   notifyListeners();
  // }


  void changeScreen(BuildContext context, Screen value) {
    _screen = value;
    switch (value) {
      case Screen.home:
        context.go('/home');
        break;
      case Screen.works:
        context.go('/works');
        break;
      case Screen.blog:
        context.go('/blog');
        break;
      case Screen.contact:
        context.go('/contact');
        break;
      default:
        context.go('/home');
        break;
    }
    notifyListeners();
  }

  void updateCurrentScreen(BuildContext context,String screen) {
    context.go(screen);
    switch(screen) {
      case '/home':
        _currentScreen= const HomeScreen();
        break;
      case '/works':
        _currentScreen= const WorksScreen();
        break;
      case '/blog':
        _currentScreen= const BlogScreen();
        break;
      case '/contact':
        _currentScreen= const ContactScreen();
        break;
      default:
        _currentScreen= const HomeScreen();
        break;
    }
    notifyListeners();
  }
}
