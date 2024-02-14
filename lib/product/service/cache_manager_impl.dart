import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_case/product/core/cache/cache_manager.dart';
import 'package:shared_preferences_case/product/model/destination.dart';

/// CacheManagerImpl
final class CacheManagerImpl implements CacheManager<Destination> {
  /// CacheManagerImpl
  CacheManagerImpl(this.prefs);
  @override
  SharedPreferences prefs;

  @override
  Future<void> saveToCache(String key, List<Destination> list) async {
    final data =
        jsonEncode(list.map((destination) => destination.toJson()).toList());
    await prefs.setString(key, data);
  }

  @override
  Future<List<Destination>> readFromCache(String key) async {
    final data = prefs.getString(key);
    if (data != null) {
      final jsonList = jsonDecode(data) as List<dynamic>;
      return jsonList
          .map((json) => Destination.fromJson(json as Map<String, dynamic>))
          .toList();
    }
    return [];
  }

  @override
  Future<void> removeFromCache(String key) async {
    await prefs.remove(key);
  }

  @override
  Future<void> clearCache() async {
    await prefs.clear();
  }
}
