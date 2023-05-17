import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/role/application/role_manager_cubit.dart';
import 'package:aqyl_school/features/role/domain/role.dart';
import 'package:aqyl_school/features/widgets/cards/role_card.dart';
import 'package:aqyl_school/features/widgets/cards/subject_card.dart';
import 'package:aqyl_school/features/widgets/titles/welcome_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/titles/logo_title.dart';

@RoutePage()
class RoleScreen extends StatelessWidget {
  const RoleScreen({super.key});
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
              RoleCard(
                onTap: () {
                  setRoleAndNavigate(context, "student");
                },
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
              RoleCard(
                onTap: () => setRoleAndNavigate(context, "teacher"),
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
              RoleCard(
                onTap: () => setRoleAndNavigate(context, "parent"),
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

  void setRoleAndNavigate(BuildContext context, String roleStr) {
    final role = getRoleFromString(roleStr);
    context.read<RoleManagerCubit>().setRole(role);
    context.router.push(const LoginRoute());
  }
}
