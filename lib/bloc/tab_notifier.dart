import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../route/app_router.gr.dart';

enum Screen { home, works, blog, contact }

class TabNotifier extends ChangeNotifier {
  Screen _screen = Screen.home;

  Screen get screen => _screen;

  void changeScreen(BuildContext context, Screen value) {
    _screen = value;
    switch (value) {
      case Screen.home:
        context.pushRoute(const HomeRoute());
        break;
      case Screen.works:
        context.pushRoute(const WorksRoute());
        break;
      case Screen.blog:
        context.pushRoute(const BlogRoute());
        break;
      case Screen.contact:
        context.pushRoute(const ContactRoute());
        break;
      default:
        context.pushRoute(const HomeRoute());
        break;
    }
    notifyListeners();
  }
}
