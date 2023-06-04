// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aqyl_school/core/router/nav_router.dart' as _i18;
import 'package:aqyl_school/features/chat/presentation/chat_screen.dart' as _i2;
import 'package:aqyl_school/features/course/presentation/course_screen.dart'
    as _i15;
import 'package:aqyl_school/features/course/presentation/course_teacher_screen.dart'
    as _i11;
import 'package:aqyl_school/features/course/presentation/group_screen.dart'
    as _i14;
import 'package:aqyl_school/features/course/presentation/lesson_screen.dart'
    as _i16;
import 'package:aqyl_school/features/course/presentation/report_screen.dart'
    as _i13;
import 'package:aqyl_school/features/course/presentation/report_teacher_screen.dart'
    as _i12;
import 'package:aqyl_school/features/course/presentation/teacher/lesson_creation_screen.dart'
    as _i17;
import 'package:aqyl_school/features/home/domain/course.dart' as _i21;
import 'package:aqyl_school/features/home/domain/lesson.dart' as _i22;
import 'package:aqyl_school/features/home/presentation/home_screen.dart' as _i4;
import 'package:aqyl_school/features/profile/presentation/profile_screen.dart'
    as _i8;
import 'package:aqyl_school/features/role/presentation/role_screen.dart' as _i1;
import 'package:aqyl_school/features/selection/parent/parent_student_selection_screen.dart'
    as _i10;
import 'package:aqyl_school/features/selection/student/student_teacher_selection_screen.dart'
    as _i9;
import 'package:aqyl_school/features/sign/presentation/forget_pass.dart' as _i6;
import 'package:aqyl_school/features/sign/presentation/login_screen.dart'
    as _i5;
import 'package:aqyl_school/features/sign/presentation/sign_up_screen.dart'
    as _i7;
import 'package:aqyl_school/features/splash/presentation/splash_screen.dart'
    as _i3;
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

abstract class $AppRouter extends _i19.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    RoleRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.RoleScreen(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    ForgetPass.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ForgetPass(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignUpScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileScreen(),
      );
    },
    StudentTeacherSelectionRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.StudentTeacherSelectionScreen(),
      );
    },
    ParentStudentSelectionRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ParentStudentSelectionScreen(),
      );
    },
    CourseTeacherRoute.name: (routeData) {
      final args = routeData.argsAs<CourseTeacherRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.CourseTeacherScreen(
          key: args.key,
          initialCourse: args.initialCourse,
        ),
      );
    },
    ReportTeacherRoute.name: (routeData) {
      final args = routeData.argsAs<ReportTeacherRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.ReportTeacherScreen(
          key: args.key,
          course: args.course,
          lessonIndex: args.lessonIndex,
        ),
      );
    },
    ReportRoute.name: (routeData) {
      final args = routeData.argsAs<ReportRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.ReportScreen(
          key: args.key,
          childIndex: args.childIndex,
        ),
      );
    },
    GroupRoute.name: (routeData) {
      final args = routeData.argsAs<GroupRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.GroupScreen(
          key: args.key,
          group: args.group,
        ),
      );
    },
    CourseRoute.name: (routeData) {
      final args = routeData.argsAs<CourseRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.CourseScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    LessonRoute.name: (routeData) {
      final args = routeData.argsAs<LessonRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.LessonScreen(
          key: args.key,
          lesson: args.lesson,
          index: args.index,
        ),
      );
    },
    LessonCreationRoute.name: (routeData) {
      final args = routeData.argsAs<LessonCreationRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.LessonCreationScreen(
          key: args.key,
          initialCourse: args.initialCourse,
        ),
      );
    },
    NavRouter.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.NavRouter(),
      );
    },
  };
}

/// generated route for
/// [_i1.RoleScreen]
class RoleRoute extends _i19.PageRouteInfo<void> {
  const RoleRoute({List<_i19.PageRouteInfo>? children})
      : super(
          RoleRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoleRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatScreen]
class ChatRoute extends _i19.PageRouteInfo<void> {
  const ChatRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashScreen]
class SplashRoute extends _i19.PageRouteInfo<void> {
  const SplashRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i19.PageRouteInfo<void> {
  const HomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute({List<_i19.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ForgetPass]
class ForgetPass extends _i19.PageRouteInfo<void> {
  const ForgetPass({List<_i19.PageRouteInfo>? children})
      : super(
          ForgetPass.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPass';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SignUpScreen]
class SignUpRoute extends _i19.PageRouteInfo<void> {
  const SignUpRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileRoute extends _i19.PageRouteInfo<void> {
  const ProfileRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i9.StudentTeacherSelectionScreen]
class StudentTeacherSelectionRoute extends _i19.PageRouteInfo<void> {
  const StudentTeacherSelectionRoute({List<_i19.PageRouteInfo>? children})
      : super(
          StudentTeacherSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentTeacherSelectionRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ParentStudentSelectionScreen]
class ParentStudentSelectionRoute extends _i19.PageRouteInfo<void> {
  const ParentStudentSelectionRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ParentStudentSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ParentStudentSelectionRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i11.CourseTeacherScreen]
class CourseTeacherRoute extends _i19.PageRouteInfo<CourseTeacherRouteArgs> {
  CourseTeacherRoute({
    _i20.Key? key,
    required _i21.Course initialCourse,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          CourseTeacherRoute.name,
          args: CourseTeacherRouteArgs(
            key: key,
            initialCourse: initialCourse,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseTeacherRoute';

  static const _i19.PageInfo<CourseTeacherRouteArgs> page =
      _i19.PageInfo<CourseTeacherRouteArgs>(name);
}

class CourseTeacherRouteArgs {
  const CourseTeacherRouteArgs({
    this.key,
    required this.initialCourse,
  });

  final _i20.Key? key;

  final _i21.Course initialCourse;

  @override
  String toString() {
    return 'CourseTeacherRouteArgs{key: $key, initialCourse: $initialCourse}';
  }
}

/// generated route for
/// [_i12.ReportTeacherScreen]
class ReportTeacherRoute extends _i19.PageRouteInfo<ReportTeacherRouteArgs> {
  ReportTeacherRoute({
    _i20.Key? key,
    required _i21.Course course,
    required int lessonIndex,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          ReportTeacherRoute.name,
          args: ReportTeacherRouteArgs(
            key: key,
            course: course,
            lessonIndex: lessonIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'ReportTeacherRoute';

  static const _i19.PageInfo<ReportTeacherRouteArgs> page =
      _i19.PageInfo<ReportTeacherRouteArgs>(name);
}

class ReportTeacherRouteArgs {
  const ReportTeacherRouteArgs({
    this.key,
    required this.course,
    required this.lessonIndex,
  });

  final _i20.Key? key;

  final _i21.Course course;

  final int lessonIndex;

  @override
  String toString() {
    return 'ReportTeacherRouteArgs{key: $key, course: $course, lessonIndex: $lessonIndex}';
  }
}

/// generated route for
/// [_i13.ReportScreen]
class ReportRoute extends _i19.PageRouteInfo<ReportRouteArgs> {
  ReportRoute({
    _i20.Key? key,
    required int childIndex,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          ReportRoute.name,
          args: ReportRouteArgs(
            key: key,
            childIndex: childIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'ReportRoute';

  static const _i19.PageInfo<ReportRouteArgs> page =
      _i19.PageInfo<ReportRouteArgs>(name);
}

class ReportRouteArgs {
  const ReportRouteArgs({
    this.key,
    required this.childIndex,
  });

  final _i20.Key? key;

  final int childIndex;

  @override
  String toString() {
    return 'ReportRouteArgs{key: $key, childIndex: $childIndex}';
  }
}

/// generated route for
/// [_i14.GroupScreen]
class GroupRoute extends _i19.PageRouteInfo<GroupRouteArgs> {
  GroupRoute({
    _i20.Key? key,
    required String group,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          GroupRoute.name,
          args: GroupRouteArgs(
            key: key,
            group: group,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupRoute';

  static const _i19.PageInfo<GroupRouteArgs> page =
      _i19.PageInfo<GroupRouteArgs>(name);
}

class GroupRouteArgs {
  const GroupRouteArgs({
    this.key,
    required this.group,
  });

  final _i20.Key? key;

  final String group;

  @override
  String toString() {
    return 'GroupRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [_i15.CourseScreen]
class CourseRoute extends _i19.PageRouteInfo<CourseRouteArgs> {
  CourseRoute({
    _i20.Key? key,
    required _i21.Course course,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          CourseRoute.name,
          args: CourseRouteArgs(
            key: key,
            course: course,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const _i19.PageInfo<CourseRouteArgs> page =
      _i19.PageInfo<CourseRouteArgs>(name);
}

class CourseRouteArgs {
  const CourseRouteArgs({
    this.key,
    required this.course,
  });

  final _i20.Key? key;

  final _i21.Course course;

  @override
  String toString() {
    return 'CourseRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [_i16.LessonScreen]
class LessonRoute extends _i19.PageRouteInfo<LessonRouteArgs> {
  LessonRoute({
    _i20.Key? key,
    required _i22.Lesson lesson,
    required int index,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          LessonRoute.name,
          args: LessonRouteArgs(
            key: key,
            lesson: lesson,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'LessonRoute';

  static const _i19.PageInfo<LessonRouteArgs> page =
      _i19.PageInfo<LessonRouteArgs>(name);
}

class LessonRouteArgs {
  const LessonRouteArgs({
    this.key,
    required this.lesson,
    required this.index,
  });

  final _i20.Key? key;

  final _i22.Lesson lesson;

  final int index;

  @override
  String toString() {
    return 'LessonRouteArgs{key: $key, lesson: $lesson, index: $index}';
  }
}

/// generated route for
/// [_i17.LessonCreationScreen]
class LessonCreationRoute extends _i19.PageRouteInfo<LessonCreationRouteArgs> {
  LessonCreationRoute({
    _i20.Key? key,
    required _i21.Course initialCourse,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          LessonCreationRoute.name,
          args: LessonCreationRouteArgs(
            key: key,
            initialCourse: initialCourse,
          ),
          initialChildren: children,
        );

  static const String name = 'LessonCreationRoute';

  static const _i19.PageInfo<LessonCreationRouteArgs> page =
      _i19.PageInfo<LessonCreationRouteArgs>(name);
}

class LessonCreationRouteArgs {
  const LessonCreationRouteArgs({
    this.key,
    required this.initialCourse,
  });

  final _i20.Key? key;

  final _i21.Course initialCourse;

  @override
  String toString() {
    return 'LessonCreationRouteArgs{key: $key, initialCourse: $initialCourse}';
  }
}

/// generated route for
/// [_i18.NavRouter]
class NavRouter extends _i19.PageRouteInfo<void> {
  const NavRouter({List<_i19.PageRouteInfo>? children})
      : super(
          NavRouter.name,
          initialChildren: children,
        );

  static const String name = 'NavRouter';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}
