import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/widgets/buttons/default_button.dart';
import 'package:aqyl_school/features/widgets/fields/input_field.dart';
import 'package:aqyl_school/features/widgets/titles/welcome_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/titles/logo_title.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late FocusNode _emailNode;
  late FocusNode _passwordNode;

  @override
  void initState() {
    _emailNode = FocusNode();
    _passwordNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _emailNode.dispose();
    _passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LogoTitle(),
            SizedBox(height: 5.h),
            const WelcomeText(),
            SizedBox(height: 5.h),
            InputField(
              label: "Email",
              focusNode: _emailNode,
            ),
            SizedBox(height: 2.5.h),
            InputField(
              label: "Password",
              focusNode: _passwordNode,
              obscureText: true,
            ),
            SizedBox(height: 5.h),
            DefaultButton(
              onPressed: () => context.router.push(
                const NavRouter(),
              ),
              child: const Text("Войти"),
            ),
          ],
        ),
      ),
    );
  }
}
