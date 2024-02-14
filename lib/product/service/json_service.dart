import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shared_preferences_case/product/core/constants/string_constants.dart';
import 'package:shared_preferences_case/product/model/destination.dart';

// ignore: one_member_abstracts
/// IJsonService
abstract class IJsonService {
  /// Get destinations
  Future<List<Destination>> getDestinations();
}

/// JsonService
final class JsonService implements IJsonService {
  @override
  Future<List<Destination>> getDestinations() async {
    try {
      final jsonString = await rootBundle.loadString(StringConstants.jsonPath);
      final jsonList =
          (json.decode(jsonString) as List).cast<Map<String, dynamic>>();
      // JSON'daki her bir öğeyi Destination nesnesine dönüştür
      final destinations = jsonList.map((json) {
        return Destination.fromJson(json);
      }).toList();

      return destinations;
    } catch (e) {
      print('Error: $e');
      return []; // Hata durumunda boş bir liste döndür
    }
  }
}
