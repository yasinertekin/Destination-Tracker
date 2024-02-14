// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:shared_preferences/shared_preferences.dart';

abstract class CacheManager<T> {
  SharedPreferences prefs;
  CacheManager(this.prefs);

  Future<void> saveToCache(String key, List<T> list);
  Future<List<T>> readFromCache(String key);
  Future<void> removeFromCache(String key);
  Future<void> clearCache();
}
