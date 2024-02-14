part of '../home_view.dart';

final class _DestinationList extends StatelessWidget {
  const _DestinationList({
    required this.homeViewModel,
  });

  final HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: homeViewModel.destinations.length,
      itemBuilder: (context, index) {
        final destination = homeViewModel.destinations[index];

        return Consumer<VisitedViewModel>(
          builder: (context, value, child) {
            final visited = value.visitedDestinations;
            final isVisited =
                visited.any((element) => element.name == destination.name);

            return ProjectCustomCard(
              visitCount: value.getVisitCount(visited, destination, isVisited),
              destination: destination,
              trailingIcon: isVisited
                  ? const FavoriteIcons()
                  : const FavoriteIcons(color: Colors.grey),
              trailingOnPressed: () {
                _removeOrAddDestination(isVisited, value, visited, destination);
              },
            );
          },
        );
      },
    );
  }

  void _removeOrAddDestination(
    bool isVisited,
    VisitedViewModel value,
    List<Destination> visited,
    Destination destination,
  ) {
    isVisited
        ? value.removeVisitedDestination(
            visited.firstWhere(
              (element) => element.name == destination.name,
            ),
          )
        : value.addVisitedDestination(
            destination.copyWith(visitCount: 1),
          );
  }
}
