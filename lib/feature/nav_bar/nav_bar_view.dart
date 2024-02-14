import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences_case/product/router/app_router.gr.dart';

@RoutePage()

/// NavBarView
final class NavBarView extends StatelessWidget {
  /// NavBarView constructor
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final Key myWidgetKey = UniqueKey();

    return AutoTabsScaffold(
      key: myWidgetKey,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () {
          context.router.push(AddDestinationRoute());
        },
        child: const Icon(Icons.add),
      ),
      routes: [
        HomeRoute(),
        const VisitedRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_sharp),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_sharp),
              label: 'Visited',
            ),
          ],
        );
      },
    );
  }
}
