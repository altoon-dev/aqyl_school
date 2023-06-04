import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/course/application/teacher_course_manager/teacher_course_manager_cubit.dart';
import 'package:aqyl_school/features/home/domain/course.dart';
import 'package:aqyl_school/features/widgets/cards/report_teacher_card.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:aqyl_school/features/widgets/critical_failure_display.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CourseTeacherScreen extends StatelessWidget {
  const CourseTeacherScreen({super.key, required this.initialCourse});

  final Course initialCourse;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
          useAppBar: true,
          hasBackButton: true,
          isScrolling: true,
          actions: [
            IconButton(onPressed: (){
              context.pushRoute(LessonCreationRoute(initialCourse: initialCourse));
            }, icon: Icon(Icons.add,color: Colors.black,))
          ],
          appBarTitle: initialCourse.courseName,
          body: BlocBuilder<TeacherCourseManagerCubit, TeacherCourseManagerState>(
            builder: (context, state) {
              return state.map(
                  initial: (_) => const SizedBox(),
                  loadInProgress: (_) => CircularProgressIndicator(),
                  loadCoursesSuccess: (state) {
                    final course=state.courses.firstWhere((course) => course.reference==initialCourse.reference);
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: course.lessons.length,
                        itemBuilder: (context, index) {
                          return ReportTeacherCard(index: index+1,
                              lesson: course.lessons[index], course: course);
                        });
                  },
                  loadCoursesFail: (_) => ProjectCriticalFailureDisplay());
           
            },
          )),
    );
  }
}