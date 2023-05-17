import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReportCard extends StatelessWidget {
  const ReportCard({
    super.key,
    required this.lesson, required this.report,
  });
  final String report;
  final String lesson;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.2.w, vertical: 1.5.w),
      child: InkWell(
        onTap: (){
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
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff292D32),
                  ),
                  SizedBox(width: 16),
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
                        report,
                        style: TextStyle(
                            color: Color(0xff004A61),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
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
