import 'package:aqyl_school/features/course/application/parent_report_manager/parent_report_manager_cubit.dart';
import 'package:aqyl_school/features/widgets/cards/report_card.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:aqyl_school/features/widgets/critical_failure_display.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key, required this.childIndex});

  final int childIndex;

  @override
  Widget build(BuildContext context) {
    context.read<ParentReportManagerCubit>().startWatchAll(childIndex);
    return SafeArea(
      child: CustomScaffold(
          useAppBar: true,
          hasBackButton: true,
          body: BlocBuilder<ParentReportManagerCubit, ParentReportManagerState>(
            builder: (context, state) {
              return state.maybeMap(
                  initial: (_) => const SizedBox(),
                  loadInProgress: (_) => CircularProgressIndicator(),
                  loadReportsSuccess: (state) {
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.reports.length,
                        itemBuilder: (context, index) {
                          return ReportCard(
                              report: state.reports[index],
                              course: state.courses[index]);
                        });
                  },
                  loadCoursesFail: (_) => ProjectCriticalFailureDisplay(),
                  orElse: () => SizedBox());
            },
          )),
    );
  }
}
