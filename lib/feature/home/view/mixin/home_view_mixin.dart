import 'package:shared_preferences_case/feature/home/view/home_view.dart';
import 'package:shared_preferences_case/feature/home/view_model/home_view_model.dart';
import 'package:shared_preferences_case/product/service/json_service.dart';

/// HomeViewMixin
mixin HomeViewMixin<StatelessWidget extends HomeView> {
  /// HomeViewModel
  final _homeViewModel = HomeViewModel(
    jsonService: JsonService(),
  );

  /// HomeViewModel getter
  HomeViewModel get homeViewModel => _homeViewModel;
}
