import 'package:flutter/material.dart';
import 'package:shared_preferences_case/product/model/destination.dart';
import 'package:shared_preferences_case/product/service/json_service.dart';

/// HomeViewModel
final class HomeViewModel extends ChangeNotifier {
  /// HomeViewModel constructor
  HomeViewModel({required IJsonService jsonService})
      : _jsonService = jsonService {
    getDestinations();
  }

  final List<Destination> _destinations = [];

  final IJsonService _jsonService;

  /// Destinations
  List<Destination> get destinations => _destinations;

  /// Get destinations
  Future<void> getDestinations() async {
    final destinations = await _jsonService.getDestinations();
    _destinations.addAll(destinations);
    notifyListeners();
  }
}
