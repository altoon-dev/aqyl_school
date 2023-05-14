import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LogoTitle extends StatelessWidget {
  const LogoTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: 25.w,
          height: 25.w,
        ),
        SizedBox(width: 2.w),
        Text(
          "AQYL School",
          style: TextStyle(
            fontSize: 0.28.dp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
