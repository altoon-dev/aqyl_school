import 'package:aqyl_school/features/chat/widgets/chat_card.dart';
import 'package:aqyl_school/features/widgets/buttons/default_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: List.generate(
            6,
                (index) => Column(
              children: [
                SizedBox(height: 3.h),
                 ChatCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
