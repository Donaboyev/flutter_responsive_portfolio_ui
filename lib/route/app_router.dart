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
        AutoRoute(path: '', page: HomeScreen),
        AutoRoute(
          page: WorksScreen,
          path: 'works',
        ),
        AutoRoute(
          page: BlogScreen,
          path: 'blog',
        ),
        AutoRoute(
          page: ContactScreen,
          path: 'contact',
        ),
      ],
    ),
  ],
)
class $AppRouter {}
