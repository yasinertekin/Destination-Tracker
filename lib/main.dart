import 'package:flutter/material.dart';
import 'package:shared_preferences_case/product/core/constants/string_constants.dart';
import 'package:shared_preferences_case/product/initialize/app_initialize.dart';
import 'package:shared_preferences_case/product/initialize/state_initialize.dart';
import 'package:shared_preferences_case/product/router/app_router.dart';

void main() {
  // Initialize Shared Preferences
  AppInitialize.initialize();
  runApp(
    StateInitialize(
      child: _MyApp(),
    ),
  );
}

final class _MyApp extends StatelessWidget {
  _MyApp();
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // App Title
      title: StringConstants.appTitle,

      // Theme
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),

      // Router
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
