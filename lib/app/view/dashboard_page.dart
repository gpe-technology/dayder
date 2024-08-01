import 'package:auto_route/auto_route.dart';
import 'package:dayder/screen/screen_size.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

@RoutePage(name: 'Dashboard')
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return width > ScreenSize.sm ? const WebNested() : const MobilNested();
  }
}

class MobilNested extends StatelessWidget {
  const MobilNested({super.key});

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

class WebNested extends StatelessWidget {
  const WebNested({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.router.current.title(context))),
      body: Row(
        children: [
          SizedBox(
            width: 54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    context.router.push(const Announcement());
                  },
                  icon: const Icon(Icons.search_rounded),
                ),
                IconButton(
                  onPressed: () {
                    context.router.push(const Chat());
                  },
                  icon: const Icon(Icons.chat_rounded),
                ),
                IconButton(
                  onPressed: () {
                    context.router.push(const Account());
                  },
                  icon: const Icon(Icons.person_rounded),
                ),
              ],
            ),
          ),
          const Expanded(child: AutoRouter()),
        ],
      ),
    );
  }
}
