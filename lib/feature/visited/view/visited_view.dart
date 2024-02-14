import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences_case/feature/visited/view_model/visited_view_model.dart';
import 'package:shared_preferences_case/product/model/destination.dart';
import 'package:shared_preferences_case/product/widget/project_custom_card.dart';

@RoutePage()

/// VisitedView
final class VisitedView extends StatelessWidget {
  /// VisitedView constructor
  const VisitedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<VisitedViewModel>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Visited'),
        ),
        body: _VisitedList(
          value.visitedDestinations,
        ),
      ),
    );
  }
}

final class _VisitedList extends StatelessWidget {
  const _VisitedList(
    this.visitedDestinations,
  );

  final List<Destination> visitedDestinations;

  @override
  Widget build(BuildContext context) {
    final visitedViewModel = context.read<VisitedViewModel>();
    return ListView.builder(
      itemCount: visitedDestinations.length,
      itemBuilder: (context, index) {
        final destination = visitedDestinations[index];
        return ProjectCustomCard(
          visitCount: destination.visitCount.toString(),
          destination: destination,
          trailingOnPressed: () {
            visitedViewModel.removeVisitedDestination(destination);
          },
          cardOnTap: () {
            visitedViewModel.incrementVisitCount(destination);
          },
        );
      },
    );
  }
}
