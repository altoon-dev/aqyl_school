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
      icon: Image.asset('assets/images/google.png', height: 30.h, width: 30.w,),
      label: Text('Продолжить с Google', style: TextStyle( fontSize: 0.33.dp, fontWeight: FontWeight.bold,),),

    );
  }
}
