import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/home/domain/course.dart';
import 'package:aqyl_school/features/home/domain/lesson.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReportTeacherCard extends StatefulWidget {
  const ReportTeacherCard({
    super.key,
    required this.lesson, required this.course, required this.index,
  });
  final Course course;
  final Lesson lesson;
  final int index;
  @override
  State<ReportTeacherCard> createState() => _ReportTeacherCardState();
}

class _ReportTeacherCardState extends State<ReportTeacherCard> {
  bool isCollapsed=true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.2.w, vertical: 1.5.w),
      child: InkWell(
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
              padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: (){
                          setState(() {
                            isCollapsed=!isCollapsed;
                          });
                        },
                        icon: Transform.rotate(
                          angle: isCollapsed?0:1.5,
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
                            "Урок ${widget.index}",
                            style: TextStyle(
                                color: isCollapsed?Color(0xff004A61):Color(0xff161C2B),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Visibility(
                            visible: isCollapsed,
                            child: Text(
                            widget.lesson.lessonName,
                              style: TextStyle(
                                  color: Color(0xff14CBD9),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Visibility(
                    visible: !isCollapsed,
                    child: Row(children: [
                      SizedBox(width: 64,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap:(){
                              context.router.push(ReportTeacherRoute(course: widget.course,lessonIndex: widget.index));
                            },
                            child : Text(
                              "Написать отчет по уроку",
                              style: TextStyle(
                                  decorationColor: Color(0xff004A61),
                                  fontSize: 14,
                                  color: Colors.transparent,
                                  shadows: [Shadow(color: Color(0xff004A61), offset: Offset(0, -2))],
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 8,),
                          GestureDetector(
                            onTap: (){
                              context.router.push(LessonRoute(lesson:widget.lesson, index: widget.index));
                            },
                            child: Text(
                              "Просмотреть материалы",
                              style: TextStyle(
                                  decorationColor: Color(0xff004A61),
                                  fontSize: 14,
                                  color: Colors.transparent,

                                  shadows: [Shadow(color: Color(0xff004A61), offset: Offset(0, -2))],
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],),
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
