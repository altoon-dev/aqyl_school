import 'package:aqyl_school/features/home/domain/course.dart';
import 'package:aqyl_school/features/widgets/cards/lesson_card.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key, required this.course});
  final Course course;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
          useAppBar: true,
          hasBackButton: true,
          appBarTitle: course.courseName,
          body: ListView.builder(
              shrinkWrap: true,
              itemCount: course.lessons.length,
              itemBuilder: (context, index) {
                return LessonCard(course:course,lessonIndex: index+1);
              })),
    );
  }
}
