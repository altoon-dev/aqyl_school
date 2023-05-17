import 'package:auto_route/auto_route.dart';

import 'auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(page: RoleRoute.page),
        AutoRoute(page: LessonRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: CourseRoute.page),
        AutoRoute(page: ForgetPass.page),
        AutoRoute(
          page: NavRouter.page,
          children: [
            AutoRoute(page: ChatRoute.page),
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
