import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences_case/feature/visited/view_model/visited_view_model.dart';
import 'package:shared_preferences_case/product/core/cache/shared_manager.dart';
import 'package:shared_preferences_case/product/service/cache_manager_impl.dart';

/// StateInitialize
final class StateInitialize extends StatelessWidget {
  /// StateInitialize const
  const StateInitialize({
    required this.child,
    super.key,
  });

  /// Child
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => VisitedViewModel(
            CacheManagerImpl(
              SharedManager.sharedPreferences,
            ),
          ),
        ),
      ],
      child: child,
    );
  }
}
