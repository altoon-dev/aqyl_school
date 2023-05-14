import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NavRouter extends StatelessWidget {
  const NavRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        ChatRoute(),
        HomeRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabRouter.activeIndex,
            onTap: (index) => tabRouter.setActiveIndex(index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble),
                label: "Chat",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_fill),
                label: "Profile",
              ),
            ],
          ),
        );
      },
    );
  }
}
