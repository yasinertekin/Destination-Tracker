import 'package:flutter/foundation.dart';
import 'package:shared_preferences_case/product/core/cache/cache_manager.dart';
import 'package:shared_preferences_case/product/core/constants/string_constants.dart';
import 'package:shared_preferences_case/product/model/destination.dart';

/// VisitedViewModel
final class VisitedViewModel extends ChangeNotifier {
  /// VisitedViewModel
  VisitedViewModel(
    this._cacheManager,
  ) {
    _init();
  }

  /// CacheManager
  final CacheManager<Destination> _cacheManager;

  /// List<Destination>
  List<Destination> _visitedDestinations = [];

  /// List<Destination> get visitedDestinations
  List<Destination> get visitedDestinations => _visitedDestinations;

  Future<void> _init() async {
    _visitedDestinations =
        await _cacheManager.readFromCache(StringConstants.visited);
    notifyListeners();
  }

  /// addVisitedDestination
  Future<void> addVisitedDestination(Destination destination) async {
    _visitedDestinations.add(destination);
    await _cacheManager.saveToCache(
      StringConstants.visited,
      _visitedDestinations,
    );
    notifyListeners();
  }

  /// removeVisitedDestination
  Future<void> removeVisitedDestination(Destination destination) async {
    _visitedDestinations.remove(destination);
    await _cacheManager.saveToCache(
      StringConstants.visited,
      _visitedDestinations,
    );
    notifyListeners();
  }

  /// incrementVisitCount
  Future<void> incrementVisitCount(Destination destination) async {
    final index = _visitedDestinations
        .indexWhere((element) => element.id == destination.id);
    _visitedDestinations[index] =
        destination.copyWith(visitCount: destination.visitCount! + 1);

    await _cacheManager.saveToCache(
      StringConstants.visited,
      _visitedDestinations,
    );
    notifyListeners();
  }

  /// getVisitCount
  String getVisitCount(
    List<Destination> visited,
    Destination destination,
    // ignore: avoid_positional_boolean_parameters
    bool isVisited,
  ) {
    if (isVisited) {
      final visitedDestination = visited.firstWhere(
        (element) => element.name == destination.name,
        orElse: () => Destination(name: '', visitCount: 0),
      );
      return visitedDestination.visitCount.toString();
    } else {
      return '0';
    }
  }
}
