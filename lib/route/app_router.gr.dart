// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../screens/screens.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    WorksRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.WorksScreen());
    },
    BlogRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.BlogScreen());
    },
    ContactRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ContactScreen());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(MainRoute.name, path: '/', children: [
          _i2.RouteConfig(HomeRoute.name, path: '', parent: MainRoute.name),
          _i2.RouteConfig(WorksRoute.name,
              path: 'works', parent: MainRoute.name),
          _i2.RouteConfig(BlogRoute.name, path: 'blog', parent: MainRoute.name),
          _i2.RouteConfig(ContactRoute.name,
              path: 'contact', parent: MainRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainRoute extends _i2.PageRouteInfo<void> {
  const MainRoute({List<_i2.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.WorksScreen]
class WorksRoute extends _i2.PageRouteInfo<void> {
  const WorksRoute() : super(WorksRoute.name, path: 'works');

  static const String name = 'WorksRoute';
}

/// generated route for
/// [_i1.BlogScreen]
class BlogRoute extends _i2.PageRouteInfo<void> {
  const BlogRoute() : super(BlogRoute.name, path: 'blog');

  static const String name = 'BlogRoute';
}

/// generated route for
/// [_i1.ContactScreen]
class ContactRoute extends _i2.PageRouteInfo<void> {
  const ContactRoute() : super(ContactRoute.name, path: 'contact');

  static const String name = 'ContactRoute';
}
