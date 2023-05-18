import 'package:aqyl_school/features/widgets/cards/report_teacher_card.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CourseTeacherScreen extends StatelessWidget {
  const CourseTeacherScreen({super.key, required this.course});
  final String course;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
          useAppBar: true,
          hasBackButton: true,
          appBarTitle: course,
          body: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
               return ReportTeacherCard(lesson:"Урок ${index+1}",course: course);
              })),
    );
  }
}