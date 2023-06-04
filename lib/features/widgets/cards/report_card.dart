import 'package:aqyl_school/features/course/application/parent_report_manager/parent_report_manager_cubit.dart';
import 'package:aqyl_school/features/home/domain/course.dart';
import 'package:aqyl_school/features/home/domain/report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReportCard extends StatefulWidget {
  const ReportCard({
    super.key,
    required this.course,
    required this.report,
  });

  final Report report;
  final Course course;

  @override
  State<ReportCard> createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCard> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.2.w, vertical: 1.5.w),
      child: InkWell(
        onTap: () {},
        highlightColor: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(2.w),
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isCollapsed = !isCollapsed;
                          });
                        },
                        icon: Transform.rotate(
                          angle: isCollapsed ? 0 : 1.5,
                          child: Icon(
                            CupertinoIcons.right_chevron,
                            size: 20,
                            color: Color(0xff292D32),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.course.courseName,
                            style: TextStyle(
                                color: Color(0xff004A61),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Отчет по уроку ${widget.report.lessonIndex + 1}",
                            style: TextStyle(
                                color: Color(0xff004A61),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Visibility(
                    visible: !isCollapsed,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                            elevation: 4,
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 12),
                              child: Text(
                                widget.report.reportContent,
                                style: TextStyle(color: Colors.black),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Добавить комментарий:",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              if (widget.report.comments.isEmpty) ...[
                                AddCommentWidget(
                                  onPressed: (text) async {
                                    final isSuccess = await context
                                        .read<ParentReportManagerCubit>()
                                        .createComment(text, widget.report);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(isSuccess
                                                ? "Комментарий был успешно добавлен."
                                                : "Произошла ошибка!")));
                                  },
                                )
                              ]
                            ],
                          ),
                        ),
                        for (int i = 0;
                            i < widget.report.comments.length;
                            i++) ...[
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffdde3fd),
                                borderRadius: BorderRadius.circular(12)),
                            margin: const EdgeInsets.only(top: 8, left: 16),
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.report.comments[i]),
                                if(i==widget.report.comments.length-1)...[
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: AddCommentWidget(
                                      onPressed: (text) async {
                                        final isSuccess = await context
                                            .read<ParentReportManagerCubit>()
                                            .createComment(text, widget.report);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                            content: Text(isSuccess
                                                ? "Комментарий был успешно добавлен."
                                                : "Произошла ошибка!")));
                                      },
                                    ),
                                  )
                                ]
                              ],
                            ),
                          )
                        ]
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AddCommentWidget extends StatelessWidget {
  const AddCommentWidget({Key? key, required this.onPressed}) : super(key: key);
  final Function(String text) onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        var textController = new TextEditingController();
        await showDialog(
            context: context,
            builder: (BuildContext context) {
              var mediaQuery = MediaQuery.of(context);
              return AnimatedContainer(
                padding: mediaQuery.padding,
                duration: const Duration(milliseconds: 300),
                child: AlertDialog(
                  title: Text("Комментарий"),
                  content: TextField(
                      controller: textController,
                      textCapitalization: TextCapitalization.sentences),
                  actions: <Widget>[
                    ElevatedButton(
                      child: Text("Отмена"),
                      onPressed: () => Navigator.pop(context),
                    ),
                    ElevatedButton(
                        child: Text("Добавить"),
                        onPressed: () {
                          onPressed(textController.text);
                          Navigator.pop(context);
                        }),
                  ],
                ),
              );
            });
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
              color: Color(0xff01bafc),
              borderRadius: BorderRadius.circular(12)),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 16,
          )),
    );
  }
}
