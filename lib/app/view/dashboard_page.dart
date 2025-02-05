import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/router/router.gr.dart';
import 'package:dayder/screen/screen_size.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'Dashboard')
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width > ScreenSize.sm ? const SideNested() : const BottomNested();
  }
}

class BottomNested extends StatelessWidget {
  const BottomNested({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
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

class SideNested extends StatelessWidget {
  const SideNested({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.router.current.title(context))),
      body: Row(
        children: [
          SizedBox(
            width: 54,
            child: Column(
              children: [
                NavLink(
                  onPressed: () {
                    context.router.push(const Announcement());
                  },
                  iconData: Icons.search_rounded,
                ),
                NavLink(
                  onPressed: () {
                    context.router.push(const Chat());
                  },
                  iconData: Icons.chat_rounded,
                ),
                NavLink(
                  onPressed: () {
                    context.router.push(const Account());
                  },
                  iconData: Icons.person_rounded,
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

class NavLink extends StatelessWidget {
  const NavLink({super.key, required this.iconData, this.onPressed});

  final VoidCallback? onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(iconData),
      ),
    );
  }
}
