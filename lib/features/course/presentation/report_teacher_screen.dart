import 'package:aqyl_school/features/course/application/teacher_report_manager/teacher_report_manager_cubit.dart';
import 'package:aqyl_school/features/home/domain/course.dart';
import 'package:aqyl_school/features/home/domain/report.dart';
import 'package:aqyl_school/features/widgets/buttons/default_button.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:aqyl_school/features/widgets/critical_failure_display.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ReportTeacherScreen extends StatefulWidget {
  const ReportTeacherScreen(
      {super.key, required this.course, required this.lessonIndex});

  final Course course;
  final int lessonIndex;

  @override
  State<ReportTeacherScreen> createState() => _ReportTeacherScreenState();
}

class _ReportTeacherScreenState extends State<ReportTeacherScreen> {
  late final controllers = List.generate(widget.course.students.length, (index) => TextEditingController());
  @override
  void initState() {
    context.read<TeacherReportManagerCubit>().startWatchAll(widget.course);
    super.initState();
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
          useAppBar: true,
          hasBackButton: true,
          appBarTitle:
              "${widget.course.courseName} - урок ${widget.lessonIndex}",
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Отчеты по уроку",
                    //  isHomework?"Домашняя работа":"Тема урока",
                    style: TextStyle(
                        decorationColor: Colors.black,
                        fontSize: 18,
                        color: Colors.transparent,
                        shadows: [
                          Shadow(color: Colors.black, offset: Offset(0, -4))
                        ],
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xffDEE2FA),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Ученики:",
                          style: TextStyle(
                              decorationColor: Colors.black,
                              fontSize: 18,
                              color: Color(0xff004A61),
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: BlocBuilder<TeacherReportManagerCubit,
                              TeacherReportManagerState>(
                            buildWhen: (p,c){
                            return  c.maybeMap(createReportFail: (_)=>false,createReportSuccess: (_)=>false,orElse: ()=>true);
                            },
                            builder: (context, state) {
                              return state.maybeMap(
                                  initial: (_) =>  Container(color: Colors.red,height: 10,width: 30,),
                                  loadInProgress: (_) =>
                                      const CircularProgressIndicator(),
                                  loadReportsSuccess: (state) {
                                    print("successState");
                                    return ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: state.students.length,
                                        itemBuilder: (context, index) {
                                          final student = state.students[index];
                                          print(student);
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                top: 16.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${index + 1}. ${student.firstName} ${student.lastName}",
                                                  style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff004A61),
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                Material(
                                                    elevation: 4,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 120,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12)),
                                                      child: () {
                                                        int reportIndex = state
                                                            .reports
                                                            .indexWhere(
                                                                (report) =>
                                                                    (report.studentReference ==
                                                                        student
                                                                            .reference) &&
                                                                    (report.lessonIndex ==
                                                                        widget.lessonIndex -
                                                                            1),
                                                                -1);
                                                        if (reportIndex == -1) {
                                                          return TextField(
                                                            controller:
                                                                controllers[index],
                                                            maxLines: null,
                                                            decoration:
                                                                const InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                            ),
                                                          );
                                                        } else {
                                                          return SingleChildScrollView(
                                                            child: Text(state
                                                                .reports[
                                                                    reportIndex]
                                                                .reportContent),
                                                          );
                                                        }
                                                      }(),
                                                    )),
                                                () {
                                                  int reportIndex = state.reports.indexWhere(
                                                      (report) =>
                                                          (report.studentReference ==
                                                              student
                                                                  .reference) &&
                                                          (report.lessonIndex ==
                                                              widget.lessonIndex -
                                                                  1),
                                                      -1);
                                                  if (reportIndex == -1) {
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 16.0),
                                                      child: Center(
                                                        child: DefaultButton(
                                                          onPressed: () {
                                                            context.read<TeacherReportManagerCubit>().createReport(Report(
                                                                reportContent:
                                                                    controllers[index]
                                                                        .text,
                                                                comments: [],
                                                                lessonIndex:
                                                                    widget.lessonIndex -
                                                                        1,
                                                                studentReference:
                                                                    student
                                                                        .reference!,
                                                                courseReference:
                                                                    widget
                                                                        .course
                                                                        .reference!));
                                                          },
                                                          child: const Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        12,
                                                                    horizontal:
                                                                        32),
                                                            child: Text(
                                                              "Заполнить",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                            ),
                                                          ),
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            elevation: 8,
                                                            backgroundColor:
                                                                const Color(
                                                                    0xff37B6FD),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  } else {
                                                    return Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  8.0),
                                                          child: Text(
                                                            state
                                                                    .reports[
                                                                        reportIndex]
                                                                    .comments
                                                                    .isEmpty
                                                                ? "Нет комментариев"
                                                                : "Комментарии:",

                                                            style: const TextStyle(
                                                                fontSize: 16,
                                                                color: Colors.black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        for(int i=0;i<state.reports[reportIndex].comments.length;i++)...[
                                                          Container(decoration:BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(12)
                                                          ),margin: const EdgeInsets.only(top: 8,left: 16),width: double.infinity,padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),child: Text(state.reports[reportIndex].comments[i]),)
                                                        ]
                                                      ],
                                                    );
                                                  }
                                                }(),
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  loadCoursesFail: (_) =>
                                      const ProjectCriticalFailureDisplay(),
                                  orElse: () => const SizedBox());
                            },
                          ),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          )),
    );
  }
}
