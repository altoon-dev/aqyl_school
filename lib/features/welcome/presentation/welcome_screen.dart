import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/widgets/cards/colored_card.dart';
import 'package:aqyl_school/features/widgets/titles/welcome_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/titles/logo_title.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const LogoTitle(),
          SizedBox(height: 5.h),
          const WelcomeText(),
          SizedBox(height: 2.h),
          Text(
            "Выберите пользователя:",
            style: TextStyle(
              fontSize: 0.28.dp,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColoredCard(
                onTap: () => context.router.push(const AuthRoute()),
                color: Colors.green,
                child: Text(
                  "Я - ученик",
                  style: TextStyle(
                    fontSize: 0.29.dp,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 2.5.h),
              ColoredCard(
                onTap: () => context.router.push(const AuthRoute()),
                color: Colors.red,
                child: Text(
                  "Я - учитель",
                  style: TextStyle(
                    fontSize: 0.29.dp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColoredCard(
                onTap: () => context.router.push(const AuthRoute()),
                color: const Color(0xFF556FFD),
                child: Text(
                  "Я - родитель",
                  style: TextStyle(
                    fontSize: 0.29.dp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
