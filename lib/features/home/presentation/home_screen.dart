import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/course/application/parent_child_watcher/parent_child_watcher_cubit.dart';
import 'package:aqyl_school/features/course/application/student_course_manager/student_course_manager_cubit.dart';
import 'package:aqyl_school/features/role/application/role_manager_cubit.dart';
import 'package:aqyl_school/features/role/domain/role.dart';
import 'package:aqyl_school/features/widgets/cards/child_card.dart';
import 'package:aqyl_school/features/widgets/cards/group_card.dart';
import 'package:aqyl_school/features/widgets/cards/subject_card.dart';
import 'package:aqyl_school/features/widgets/critical_failure_display.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/search_bar.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoleManagerCubit, RoleManagerState>(
      buildWhen: (p, c) => p.role != c.role,
      builder: (context, state) {
        return SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(5.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                    color: const Color(0xFF556FFD),
                    borderRadius: BorderRadius.circular(5.w),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Добро\nпожаловать\nобратно!",
                            style: TextStyle(
                              fontSize: 0.33.dp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.transparent,
                                constraints: BoxConstraints.expand(
                                  height: 90.h,
                                ),
                                builder: (context) {
                                  return const NotificationCenter();
                                },
                              );
                            },
                            icon: const Icon(
                              CupertinoIcons.bell,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      if (Role.parent != state.role) ...[
                        const SearchBar(),
                      ]
                    ],
                  ),
                ),
                SizedBox(height: 5.w),
                if (state.role == Role.student) ...[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Выберите курс",
                      style: TextStyle(
                        fontSize: 0.3.dp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ] else if (state.role == Role.teacher) ...[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Выберите группу",
                      style: TextStyle(
                        fontSize: 0.3.dp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
                SizedBox(height: 5.w),
                if (state.role == Role.student) ...[
                  BlocBuilder<StudentCourseManagerCubit,
                      StudentCourseManagerState>(
                    builder: (context, state) {
                      return state.map(
                          initial: (_) => const SizedBox(),
                          loadInProgress: (_) => CircularProgressIndicator(),
                          loadCoursesSuccess: (state) {
                            return GridView.count(
                              crossAxisCount: 2,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              mainAxisSpacing: 2.5.w,
                              crossAxisSpacing: 2.5.w,
                              children: List.generate(
                                state.courses.length,
                                (index) => SubjectCard(
                                  color: const Color(0xFFC9E464),
                                  onTap: () => context.router.push(CourseRoute(
                                      course: state.courses[index])),
                                  child: Text(
                                    state.courses[index].courseName,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            );
                          },
                          loadCoursesFail: (_) =>
                              ProjectCriticalFailureDisplay());
                    },
                  ),
                ] else if (state.role == Role.parent) ...[
                  BlocBuilder<ParentChildWatcherCubit, ParentChildWatcherState>(
                    builder: (context, state) {
                      return state.map(
                          initial: (_) => const SizedBox(),
                          loadInProgress: (_) => CircularProgressIndicator(),
                          loadChildrenSuccess: (state) {
                            return ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 1,
                                itemBuilder: (context, index) {
                                  final child = state.children[index];
                                  return ChildCard(
                                    name:
                                        "${child.firstName} ${child.lastName}",
                                    group: "SE-2015",
                                  );
                                });
                          },
                          loadChildrenFail: (_) =>
                              ProjectCriticalFailureDisplay());
                    },
                  )
                ] else ...[
                  GroupCard(group: "SE-2015")
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}

class NotificationCenter extends StatelessWidget {
  const NotificationCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () => context.router.pop(),
      enableDrag: false,
      constraints: BoxConstraints.expand(
        height: 90.h,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      builder: (context) {
        return Container(
          height: 1000,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.w),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_drop_down,
                color: Colors.black54,
                size: 0.44.dp,
              ),
              SizedBox(height: 5.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/no_notify.png',
                    height: 60.w,
                    width: 60.w,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    'Новых уведомлений нет',
                    style: TextStyle(
                      fontSize: 0.32.dp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
