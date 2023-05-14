import 'package:auto_route/auto_route.dart';

import 'auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: SplashRoute.page),
    AutoRoute(page: WelcomeRoute.page),
    AutoRoute(page: CourseRoute.page),
    AutoRoute(
      page: NavRouter.page,
      initial: true,
      children: [
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
  ];
}
