import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

@immutable

/// SharedManager
final class SharedManager {
  const SharedManager._();

  /// sharedPreferences
  static late final SharedPreferences sharedPreferences;

  /// initializeSharedPreferences
  static Future<void> initializeSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
