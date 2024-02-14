import 'package:flutter/material.dart';
import 'package:shared_preferences_case/product/core/cache/shared_manager.dart';

/// AppInitialize
@immutable
final class AppInitialize {
  const AppInitialize._();

  /// Initialize
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SharedManager.initializeSharedPreferences();
  }
}
