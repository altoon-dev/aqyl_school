import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Добро пожаловать!",
      style: TextStyle(
        fontSize: 0.33.dp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
