import 'package:auto_route/auto_route.dart';
import 'package:dayder/router/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AppDashboardPage extends StatelessWidget {
  const AppDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        AppDiscussionsRoute(),
        AppMarketplaceRoute(),
        AppMenuRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded),
              label: 'Discussions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: 'Marketplace',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_rounded),
              label: 'Menu',
            ),
          ],
        );
      },
    );
  }
}
