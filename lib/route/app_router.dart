import 'package:auto_route/auto_route.dart';

import '../screens/screens.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: MainScreen,
      path: '/',
      children: [
        CustomRoute(
          path: '',
          page: HomeScreen,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: WorksScreen,
          path: 'works',
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: BlogScreen,
          path: 'blog',
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: ContactScreen,
          path: 'contact',
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
