import 'package:auto_route/auto_route.dart';
import 'package:dayder/navigation/router/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'Dashboard')
class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) {
        return AppBar(title: Text(tabsRouter.current.title(context)));
      },
      routes: const [
        Announcement(),
        Chat(),
        Account(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'My account',
            ),
          ],
        );
      },
    );
  }
}
