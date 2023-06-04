import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/home/domain/course.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({
    super.key,
    required this.lessonIndex, required this.course,
  });
  final Course course;
  final int lessonIndex;

  @override
  Widget build(BuildContext context) {
    late final Color color;
      color= Color(0xffCDFEC5);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.2.w, vertical: 1.5.w),
      child: InkWell(
        onTap: (){
          context.router.push(LessonRoute(lesson:course.lessons[lessonIndex-1],index: lessonIndex));
        },
        highlightColor: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(2.w),
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: double.infinity,
            height: 20.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Color(0XFFF8F8F8),
                    child: Icon(
                      Icons.play_arrow,
                      size: 36,
                      color: Color(0xff004A61),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Урок $lessonIndex",
                          style: TextStyle(
                              color: Color(0xff004A61),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          course.lessons[lessonIndex-1].lessonName,overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: Color(0xff14CBD9),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(radius:16,backgroundColor:color)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
