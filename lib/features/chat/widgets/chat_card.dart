import 'package:aqyl_school/features/widgets/buttons/default_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Имя Фамилия',
              style: TextStyle(
                fontSize: 0.3.dp,
              ),
            ),
            SizedBox(height: 1.h),
            Text(
              '@jdoe',
              style: TextStyle(
                fontSize: 0.25.dp,
              ),
            ),
          ],
        ),
        DefaultButton(
          child: const Text('написать'),
          onPressed: () {},
        ),
      ],
    );
  }
}
