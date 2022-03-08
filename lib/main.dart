import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_portfolio_ui/screens/main_screen.dart';

import 'core/strings.dart';
import 'bloc/tab_notifier.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TabNotifier>(create: (_) => TabNotifier()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: Strings.appTitle,
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
      ),
    );
  }

  final _router = GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(path: '/', redirect: (_) => '/home'),
      GoRoute(
        path: '/:url',
        builder: (context, GoRouterState state) {
          return MainScreen(key: state.pageKey);
        },
      ),
    ],
  );
}
