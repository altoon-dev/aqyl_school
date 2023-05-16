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
            Center(child: DefaultButton(child: Text('выйти с акккаунта'), onPressed: () {context.read<AuthBloc>().add(SignOutRequested()); }),),
          ],
        ),
      ),
    );
  }
}
