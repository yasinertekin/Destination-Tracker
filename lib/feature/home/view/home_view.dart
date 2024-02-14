import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences_case/feature/home/view/mixin/home_view_mixin.dart';
import 'package:shared_preferences_case/feature/home/view_model/home_view_model.dart';
import 'package:shared_preferences_case/feature/visited/view_model/visited_view_model.dart';
import 'package:shared_preferences_case/product/model/destination.dart';
import 'package:shared_preferences_case/product/widget/favorite_icon.dart';
import 'package:shared_preferences_case/product/widget/project_custom_card.dart';

part 'widget/destination_list.dart';

@RoutePage()

/// HomeView
final class HomeView extends StatelessWidget with HomeViewMixin<HomeView> {
  /// HomeView constructor
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: homeViewModel,
      builder: (context, child) => Scaffold(
        body: _DestinationList(homeViewModel: homeViewModel),
      ),
    );
  }
}
