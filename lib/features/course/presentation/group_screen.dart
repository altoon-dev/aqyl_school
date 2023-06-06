import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/course/application/teacher_course_manager/teacher_course_manager_cubit.dart';
import 'package:aqyl_school/features/role/application/role_manager_cubit.dart';
import 'package:aqyl_school/features/role/domain/role.dart';
import 'package:aqyl_school/features/widgets/cards/subject_card.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:aqyl_school/features/widgets/critical_failure_display.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class GroupScreen extends StatelessWidget {
  const GroupScreen({Key? key, required this.group}) : super(key: key);
  final String group;

  @override
  Widget build(BuildContext context) {
    if(context.read<RoleManagerCubit>().state.role==Role.teacher){
      context.read<TeacherCourseManagerCubit>().startWatchAll();
    }
    return CustomScaffold(
      useAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5.w),
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: const Color(0xFF556FFD),
                borderRadius: BorderRadius.circular(5.w),
              ),
              child: Center(
                child: Text(
                  group,
                  style: TextStyle(
                    fontSize: 0.33.dp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.w),
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
            SizedBox(height: 5.w),
            BlocBuilder<TeacherCourseManagerCubit, TeacherCourseManagerState>(
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
                        children: List.generate(state.courses.length, (index) {
                          final course = state.courses[index];
                          return SubjectCard(
                            color: const Color(0xFFC9E464),
                            onTap: () => context.router.push(
                                CourseTeacherRoute(initialCourse: course)),
                            child: Text(
                              course.courseName,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          );
                        }),
                      );
                    },
                    loadCoursesFail: (_) => ProjectCriticalFailureDisplay());
              },
            ),
          ],
        ),
      ),
    );
  }
}
