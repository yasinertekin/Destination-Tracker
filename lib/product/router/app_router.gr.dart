// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:shared_preferences_case/feature/add_destination/view/add_destination_view.dart'
    as _i1;
import 'package:shared_preferences_case/feature/home/view/home_view.dart'
    as _i2;
import 'package:shared_preferences_case/feature/nav_bar/nav_bar_view.dart'
    as _i3;
import 'package:shared_preferences_case/feature/visited/view/visited_view.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AddDestinationRoute.name: (routeData) {
      final args = routeData.argsAs<AddDestinationRouteArgs>(
          orElse: () => const AddDestinationRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddDestinationView(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.HomeView(key: args.key),
      );
    },
    NavBarRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.NavBarView(),
      );
    },
    VisitedRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.VisitedView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddDestinationView]
class AddDestinationRoute extends _i5.PageRouteInfo<AddDestinationRouteArgs> {
  AddDestinationRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          AddDestinationRoute.name,
          args: AddDestinationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddDestinationRoute';

  static const _i5.PageInfo<AddDestinationRouteArgs> page =
      _i5.PageInfo<AddDestinationRouteArgs>(name);
}

class AddDestinationRouteArgs {
  const AddDestinationRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'AddDestinationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.HomeView]
class HomeRoute extends _i5.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<HomeRouteArgs> page =
      _i5.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.NavBarView]
class NavBarRoute extends _i5.PageRouteInfo<void> {
  const NavBarRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavBarRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.VisitedView]
class VisitedRoute extends _i5.PageRouteInfo<void> {
  const VisitedRoute({List<_i5.PageRouteInfo>? children})
      : super(
          VisitedRoute.name,
          initialChildren: children,
        );

  static const String name = 'VisitedRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
