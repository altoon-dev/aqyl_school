import 'package:aqyl_school/features/widgets/core/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget body;
  final Widget? floatingActionButton;
  final bool isScrolling;
  final String? appBarTitle;
  final BottomNavigationBar? bottomNavigationBar;
  final bool useAppBar;
  final List<Widget> actions;
  final Drawer? drawer;
  final bool hasBackButton;
  final double? titleSpacing;
  const CustomScaffold({
    Key? key,
    required this.body,
    this.floatingActionButton,
    this.padding,
    this.useAppBar = false,
    this.bottomNavigationBar,
    this.actions = const [],
    this.isScrolling = false,
    this.hasBackButton=true,
    this.appBarTitle,
    this.titleSpacing,
    this.drawer
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer:  drawer,
        appBar: useAppBar
            ? CustomAppBar(
          hasBackButton: hasBackButton,
          titleName: appBarTitle,
              )
            : null,
        body: Padding(
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
          child: isScrolling
              ? SingleChildScrollView(
                  child: body,
                )
              : body,
        ),
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
