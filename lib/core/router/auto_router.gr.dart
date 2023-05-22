// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aqyl_school/core/router/nav_router.dart' as _i15;
import 'package:aqyl_school/features/chat/presentation/chat_screen.dart' as _i2;
import 'package:aqyl_school/features/course/presentation/course_screen.dart'
    as _i13;
import 'package:aqyl_school/features/course/presentation/course_teacher_screen.dart'
    as _i9;
import 'package:aqyl_school/features/course/presentation/group_screen.dart'
    as _i12;
import 'package:aqyl_school/features/course/presentation/lesson_screen.dart'
    as _i14;
import 'package:aqyl_school/features/course/presentation/report_screen.dart'
    as _i11;
import 'package:aqyl_school/features/course/presentation/report_teacher_screen.dart'
    as _i10;
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
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/cupertino.dart' as _i18;
import 'package:flutter/material.dart' as _i17;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    RoleRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.RoleScreen(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    ForgetPass.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ForgetPass(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignUpScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileScreen(),
      );
    },
    CourseTeacherRoute.name: (routeData) {
      final args = routeData.argsAs<CourseTeacherRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.CourseTeacherScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    ReportTeacherRoute.name: (routeData) {
      final args = routeData.argsAs<ReportTeacherRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ReportTeacherScreen(
          key: args.key,
          lesson: args.lesson,
        ),
      );
    },
    ReportRoute.name: (routeData) {
      final args = routeData.argsAs<ReportRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.ReportScreen(
          key: args.key,
          report: args.report,
        ),
      );
    },
    GroupRoute.name: (routeData) {
      final args = routeData.argsAs<GroupRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.GroupScreen(
          key: args.key,
          group: args.group,
        ),
      );
    },
    CourseRoute.name: (routeData) {
      final args = routeData.argsAs<CourseRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.CourseScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    LessonRoute.name: (routeData) {
      final args = routeData.argsAs<LessonRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.LessonScreen(
          key: args.key,
          lesson: args.lesson,
        ),
      );
    },
    NavRouter.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.NavRouter(),
      );
    },
  };
}

/// generated route for
/// [_i1.RoleScreen]
class RoleRoute extends _i16.PageRouteInfo<void> {
  const RoleRoute({List<_i16.PageRouteInfo>? children})
      : super(
          RoleRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoleRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatScreen]
class ChatRoute extends _i16.PageRouteInfo<void> {
  const ChatRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashScreen]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute({List<_i16.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ForgetPass]
class ForgetPass extends _i16.PageRouteInfo<void> {
  const ForgetPass({List<_i16.PageRouteInfo>? children})
      : super(
          ForgetPass.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPass';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SignUpScreen]
class SignUpRoute extends _i16.PageRouteInfo<void> {
  const SignUpRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileRoute extends _i16.PageRouteInfo<void> {
  const ProfileRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.CourseTeacherScreen]
class CourseTeacherRoute extends _i16.PageRouteInfo<CourseTeacherRouteArgs> {
  CourseTeacherRoute({
    _i17.Key? key,
    required String course,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          CourseTeacherRoute.name,
          args: CourseTeacherRouteArgs(
            key: key,
            course: course,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseTeacherRoute';

  static const _i16.PageInfo<CourseTeacherRouteArgs> page =
      _i16.PageInfo<CourseTeacherRouteArgs>(name);
}

class CourseTeacherRouteArgs {
  const CourseTeacherRouteArgs({
    this.key,
    required this.course,
  });

  final _i17.Key? key;

  final String course;

  @override
  String toString() {
    return 'CourseTeacherRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [_i10.ReportTeacherScreen]
class ReportTeacherRoute extends _i16.PageRouteInfo<ReportTeacherRouteArgs> {
  ReportTeacherRoute({
    _i17.Key? key,
    required String lesson,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          ReportTeacherRoute.name,
          args: ReportTeacherRouteArgs(
            key: key,
            lesson: lesson,
          ),
          initialChildren: children,
        );

  static const String name = 'ReportTeacherRoute';

  static const _i16.PageInfo<ReportTeacherRouteArgs> page =
      _i16.PageInfo<ReportTeacherRouteArgs>(name);
}

class ReportTeacherRouteArgs {
  const ReportTeacherRouteArgs({
    this.key,
    required this.lesson,
  });

  final _i17.Key? key;

  final String lesson;

  @override
  String toString() {
    return 'ReportTeacherRouteArgs{key: $key, lesson: $lesson}';
  }
}

/// generated route for
/// [_i11.ReportScreen]
class ReportRoute extends _i16.PageRouteInfo<ReportRouteArgs> {
  ReportRoute({
    _i17.Key? key,
    required String report,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          ReportRoute.name,
          args: ReportRouteArgs(
            key: key,
            report: report,
          ),
          initialChildren: children,
        );

  static const String name = 'ReportRoute';

  static const _i16.PageInfo<ReportRouteArgs> page =
      _i16.PageInfo<ReportRouteArgs>(name);
}

class ReportRouteArgs {
  const ReportRouteArgs({
    this.key,
    required this.report,
  });

  final _i17.Key? key;

  final String report;

  @override
  String toString() {
    return 'ReportRouteArgs{key: $key, report: $report}';
  }
}

/// generated route for
/// [_i12.GroupScreen]
class GroupRoute extends _i16.PageRouteInfo<GroupRouteArgs> {
  GroupRoute({
    _i18.Key? key,
    required String group,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          GroupRoute.name,
          args: GroupRouteArgs(
            key: key,
            group: group,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupRoute';

  static const _i16.PageInfo<GroupRouteArgs> page =
      _i16.PageInfo<GroupRouteArgs>(name);
}

class GroupRouteArgs {
  const GroupRouteArgs({
    this.key,
    required this.group,
  });

  final _i18.Key? key;

  final String group;

  @override
  String toString() {
    return 'GroupRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [_i13.CourseScreen]
class CourseRoute extends _i16.PageRouteInfo<CourseRouteArgs> {
  CourseRoute({
    _i17.Key? key,
    required String course,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          CourseRoute.name,
          args: CourseRouteArgs(
            key: key,
            course: course,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const _i16.PageInfo<CourseRouteArgs> page =
      _i16.PageInfo<CourseRouteArgs>(name);
}

class CourseRouteArgs {
  const CourseRouteArgs({
    this.key,
    required this.course,
  });

  final _i17.Key? key;

  final String course;

  @override
  String toString() {
    return 'CourseRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [_i14.LessonScreen]
class LessonRoute extends _i16.PageRouteInfo<LessonRouteArgs> {
  LessonRoute({
    _i17.Key? key,
    required String lesson,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          LessonRoute.name,
          args: LessonRouteArgs(
            key: key,
            lesson: lesson,
          ),
          initialChildren: children,
        );

  static const String name = 'LessonRoute';

  static const _i16.PageInfo<LessonRouteArgs> page =
      _i16.PageInfo<LessonRouteArgs>(name);
}

class LessonRouteArgs {
  const LessonRouteArgs({
    this.key,
    required this.lesson,
  });

  final _i17.Key? key;

  final String lesson;

  @override
  String toString() {
    return 'LessonRouteArgs{key: $key, lesson: $lesson}';
  }
}

/// generated route for
/// [_i15.NavRouter]
class NavRouter extends _i16.PageRouteInfo<void> {
  const NavRouter({List<_i16.PageRouteInfo>? children})
      : super(
          NavRouter.name,
          initialChildren: children,
        );

  static const String name = 'NavRouter';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
