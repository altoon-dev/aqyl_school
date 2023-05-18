import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({
    super.key,
    required this.group,
  });
  final String group;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 1.2.w,vertical: 1.5.w ),
      child: InkWell(
        onTap: (){
          context.router.push(GroupRoute(group: group));
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
              color: Color(0xffDEE2FA),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(children: [
              SizedBox(width: 24),
              Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
                Text(group,  style: TextStyle(color: Color(0xff004A61),fontWeight: FontWeight.bold),),
              ],)
            ],),
          ),
        ),
      ),
    );
  }
}
