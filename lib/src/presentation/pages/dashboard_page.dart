import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/app_router.gr.dart';
import 'package:flutter/material.dart';

import '../widgets/search_text_field.dart';

@RoutePage(name: 'Dashboard')
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) {
        return tabsRouter.current.name != const Search().routeName
            ? AppBar(
                title: Text(tabsRouter.current.name),
              )
            : const PreferredSize(
                preferredSize: Size.fromHeight(56),
                child: SearchTextField(),
              );
      },
      routes: const [
        Search(),
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
