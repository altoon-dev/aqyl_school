import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Image.asset('assets/images/google.png', height: 2.h, width: 5.w,),
      label: Text('Продолжить с Google', style: TextStyle( fontSize: 0.27.dp, fontWeight: FontWeight.bold,),),

    );
  }
}
