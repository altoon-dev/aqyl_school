import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/widgets/buttons/default_button.dart';
import 'package:aqyl_school/features/widgets/fields/input_field.dart';
import 'package:aqyl_school/features/widgets/titles/welcome_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/titles/logo_title.dart';
import '../../widgets/utils/utils.dart';

@RoutePage()
class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();

}

class _ForgetPassState extends State<ForgetPass> {
  final _emailController = TextEditingController();
  late FocusNode _emailNode;
  late FocusNode _passwordNode;

  @override
  void initState() {
    _emailController.dispose();
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
            Text('Введите почту', style: TextStyle(fontSize: 0.33.dp, fontWeight: FontWeight.bold,),),
            InputField(
              controller: _emailController,
              label: "Email",
              focusNode: _emailNode,
              validator: (value) {
                return value != null &&
                    !EmailValidator.validate(value)
                    ? 'Enter a valid email'
                    : null;
              },
            ),
            SizedBox(height: 2.5.h),
            DefaultButton(
              onPressed: resetPassword,

              child: const Text("Восстановить"),
            ),
          ],
        ),
      ),
    );
  }

  Future resetPassword() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator(),)
    );
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());

      Utils.showSnackBar(context, 'Password reset email sent');
    } on FirebaseAuthException catch (e){
      print(e);

      Utils.showSnackBar(context, e.message ?? 'An error occurred');
    }

  }
}

