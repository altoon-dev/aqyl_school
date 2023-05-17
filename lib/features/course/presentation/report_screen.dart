import 'package:aqyl_school/features/widgets/cards/lesson_card.dart';
import 'package:aqyl_school/features/widgets/cards/report_card.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key, required this.report});
  final String report;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
        useAppBar: true,
          hasBackButton: true,
          body: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return ReportCard(report:"Отчет по уроку ${index+1}",lesson: report);
              })),
    );
  }
}
