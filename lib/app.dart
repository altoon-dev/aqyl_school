import 'package:aqyl_school/core/router/auto_router.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp.router(
          title: 'Aqyl School',
          routerConfig: _appRouter.config(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
