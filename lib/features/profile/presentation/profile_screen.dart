import 'package:aqyl_school/features/role/application/role_manager_cubit.dart';
import 'package:aqyl_school/features/role/domain/role.dart';
import 'package:aqyl_school/features/widgets/buttons/default_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../sign/bloc/auth_bloc.dart';
import '../../sign/bloc/auth_event.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: DefaultButton(
                  child: Text('выйти с акккаунта'),
                  onPressed: () {
                    context.read<AuthBloc>().add(SignOutRequested());
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final role = getRoleFromString("student");
                        context.read<RoleManagerCubit>().setRole(role);
                      },
                      child: Text("Student"),
                    ),
                  ),
                  SizedBox(width: 8,),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final role = getRoleFromString("parent");
                        context.read<RoleManagerCubit>().setRole(role);
                      },
                      child: Text("Parent"),
                    ),
                  ),
                   SizedBox(width: 8,),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final role = getRoleFromString("teacher");
                        context.read<RoleManagerCubit>().setRole(role);
                      },
                      child: Text("Teacher"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
