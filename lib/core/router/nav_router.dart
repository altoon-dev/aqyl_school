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
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // Adjust color opacity as needed
                  spreadRadius: 0.1,
                  blurRadius: 10,
                  offset: Offset(0, -3), // Move to top vertically
                )
              ],
                borderRadius: BorderRadius.circular(24),
            ),
            height: 70, // Set the desired height
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.shifting,

                currentIndex: tabRouter.activeIndex,
                onTap: (index) => tabRouter.setActiveIndex(index),
                unselectedFontSize: 0,
                selectedFontSize: 0,
                items:  [
                  BottomNavigationBarItem(
                    icon: CustomBottomNavigationBarItem(label: "Chat",iconData:CupertinoIcons.chat_bubble,isSelected: tabRouter.activeIndex==0),
                    label: "Chat",
                  ),
                  BottomNavigationBarItem(

                    icon: CustomBottomNavigationBarItem(label: "Home",iconData:CupertinoIcons.home,isSelected: tabRouter.activeIndex==1),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(

                    icon: CustomBottomNavigationBarItem(label: "Profile",iconData:CupertinoIcons.person,isSelected: tabRouter.activeIndex==2),
                    label: "Profile",
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem({Key? key, required this.label, required this.isSelected, required this.iconData}) : super(key: key);
  final IconData iconData;
  final String label;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      decoration: BoxDecoration(                  color: isSelected?Color(0xff4D8AF0).withOpacity(0.28):Colors.transparent,
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData,color: isSelected?Color(0xff4D8AF0):Color(0xff161C2B),),
          if(isSelected)...[
            const SizedBox(width: 4,),
            Text(label,style: TextStyle(color: Color(0xff4D8AF0),))
          ]

        ],
      ),
    );
  }
}
