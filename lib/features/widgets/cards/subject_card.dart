import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SubjectCard extends StatelessWidget {
  const SubjectCard({
    super.key,
    required this.color,
    required this.onTap,
    required this.child,
  });

  final Color color;
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(2.w),
      child: Container(
        width: 35.w,
        height: 35.w,
        margin: EdgeInsets.all(1.2.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.w),
          color: color,
        ),
        child: Center(child: child),
      ),
    );
  }
}
