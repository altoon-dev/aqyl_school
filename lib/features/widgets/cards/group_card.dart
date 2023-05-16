import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({
    super.key,
    required this.group,
    required this.onTap,
  });
  final String group;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 1.2.w,vertical: 1.5.w ),
      child: InkWell(
        onTap: onTap,
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
