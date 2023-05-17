import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/course/presentation/report_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChildCard extends StatelessWidget {
  const ChildCard({
    super.key,
    required this.name, required this.group,
  });
  final String name;
  final String group;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 1.2.w,vertical: 1.5.w ),
      child: InkWell(
        onTap: (){
          context.router.push(ReportRoute(report: "Математика"));
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
            child: Row(children: [
              SizedBox(width: 8,),
              CircleAvatar(
                backgroundColor: Colors.grey.shade400,
                radius: 32,
                child: const Icon(Icons.person, color: Colors.white,size: 36,),
              ),
              SizedBox(width: 16),

              Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
                Text(name,  style: TextStyle(color: Color(0xff004A61),fontWeight: FontWeight.bold),),
                Text(group,  style: Theme.of(context).textTheme.bodyText1,),
              ],)
            ],),
          ),
        ),
      ),
    );
  }
}
