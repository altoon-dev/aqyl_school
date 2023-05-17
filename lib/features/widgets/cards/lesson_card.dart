import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({
    super.key,
    required this.lesson, required this.course,
  });
  final String course;
  final String lesson;

  @override
  Widget build(BuildContext context) {
    late final Color color;
    if(lesson.contains("1")||lesson.contains("2")){
      color= Color(0xffCDFEC5);
    }
    else if(lesson.contains("3")||lesson.contains("4")){
      color= Color(0xffFEE9C5);
    }else{
      color= Color(0xffF9AAAA);
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.2.w, vertical: 1.5.w),
      child: InkWell(
        onTap: (){
          context.router.push(LessonRoute(lesson: "$course - $lesson"));
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        lesson,
                        style: TextStyle(
                            color: Color(0xff004A61),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "--Тема урока--",
                        style: TextStyle(
                            color: Color(0xff14CBD9),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
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
