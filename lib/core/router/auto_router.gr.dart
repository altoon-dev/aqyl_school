// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aqyl_school/core/router/nav_router.dart' as _i12;
import 'package:aqyl_school/features/chat/presentation/chat_screen.dart' as _i2;
import 'package:aqyl_school/features/course/presentation/course_screen.dart'
    as _i10;
import 'package:aqyl_school/features/course/presentation/lesson_screen.dart'
    as _i11;
import 'package:aqyl_school/features/course/presentation/report_screen.dart'
    as _i9;
import 'package:aqyl_school/features/home/presentation/home_screen.dart' as _i4;
import 'package:aqyl_school/features/profile/presentation/profile_screen.dart'
    as _i8;
import 'package:aqyl_school/features/role/presentation/role_screen.dart' as _i1;
import 'package:aqyl_school/features/sign/presentation/forget_pass.dart' as _i6;
import 'package:aqyl_school/features/sign/presentation/login_screen.dart'
    as _i5;
import 'package:aqyl_school/features/sign/presentation/sign_up_screen.dart'
    as _i7;
import 'package:aqyl_school/features/splash/presentation/splash_screen.dart'
    as _i3;
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    RoleRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.RoleScreen(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    ForgetPass.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ForgetPass(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignUpScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileScreen(),
      );
    },
    ReportRoute.name: (routeData) {
      final args = routeData.argsAs<ReportRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.ReportScreen(
          key: args.key,
          report: args.report,
        ),
      );
    },
    CourseRoute.name: (routeData) {
      final args = routeData.argsAs<CourseRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.CourseScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    LessonRoute.name: (routeData) {
      final args = routeData.argsAs<LessonRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.LessonScreen(
          key: args.key,
          lesson: args.lesson,
        ),
      );
    },
    NavRouter.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.NavRouter(),
      );
    },
  };
}

/// generated route for
/// [_i1.RoleScreen]
class RoleRoute extends _i13.PageRouteInfo<void> {
  const RoleRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RoleRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoleRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatScreen]
class ChatRoute extends _i13.PageRouteInfo<void> {
  const ChatRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashScreen]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ForgetPass]
class ForgetPass extends _i13.PageRouteInfo<void> {
  const ForgetPass({List<_i13.PageRouteInfo>? children})
      : super(
          ForgetPass.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPass';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SignUpScreen]
class SignUpRoute extends _i13.PageRouteInfo<void> {
  const SignUpRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ReportScreen]
class ReportRoute extends _i13.PageRouteInfo<ReportRouteArgs> {
  ReportRoute({
    _i14.Key? key,
    required String report,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ReportRoute.name,
          args: ReportRouteArgs(
            key: key,
            report: report,
          ),
          initialChildren: children,
        );

  static const String name = 'ReportRoute';

  static const _i13.PageInfo<ReportRouteArgs> page =
      _i13.PageInfo<ReportRouteArgs>(name);
}

class ReportRouteArgs {
  const ReportRouteArgs({
    this.key,
    required this.report,
  });

  final _i14.Key? key;

  final String report;

  @override
  String toString() {
    return 'ReportRouteArgs{key: $key, report: $report}';
  }
}

/// generated route for
/// [_i10.CourseScreen]
class CourseRoute extends _i13.PageRouteInfo<CourseRouteArgs> {
  CourseRoute({
    _i14.Key? key,
    required String course,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          CourseRoute.name,
          args: CourseRouteArgs(
            key: key,
            course: course,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const _i13.PageInfo<CourseRouteArgs> page =
      _i13.PageInfo<CourseRouteArgs>(name);
}

class CourseRouteArgs {
  const CourseRouteArgs({
    this.key,
    required this.course,
  });

  final _i14.Key? key;

  final String course;

  @override
  String toString() {
    return 'CourseRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [_i11.LessonScreen]
class LessonRoute extends _i13.PageRouteInfo<LessonRouteArgs> {
  LessonRoute({
    _i14.Key? key,
    required String lesson,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          LessonRoute.name,
          args: LessonRouteArgs(
            key: key,
            lesson: lesson,
          ),
          initialChildren: children,
        );

  static const String name = 'LessonRoute';

  static const _i13.PageInfo<LessonRouteArgs> page =
      _i13.PageInfo<LessonRouteArgs>(name);
}

class LessonRouteArgs {
  const LessonRouteArgs({
    this.key,
    required this.lesson,
  });

  final _i14.Key? key;

  final String lesson;

  @override
  String toString() {
    return 'LessonRouteArgs{key: $key, lesson: $lesson}';
  }
}

/// generated route for
/// [_i12.NavRouter]
class NavRouter extends _i13.PageRouteInfo<void> {
  const NavRouter({List<_i13.PageRouteInfo>? children})
      : super(
          NavRouter.name,
          initialChildren: children,
        );

  static const String name = 'NavRouter';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
