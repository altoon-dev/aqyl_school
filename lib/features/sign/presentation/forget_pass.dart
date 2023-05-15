import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/widgets/buttons/default_button.dart';
import 'package:aqyl_school/features/widgets/fields/input_field.dart';
import 'package:aqyl_school/features/widgets/titles/welcome_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/titles/logo_title.dart';

@RoutePage()
class ForegetPass extends StatefulWidget {
  const ForegetPass({super.key});

  @override
  State<ForegetPass> createState() => _ForegetPassState();
}

class _ForegetPassState extends State<ForegetPass> {
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
            Text('Введите почту', style: TextStyle(fontSize: 0.33.dp, fontWeight: FontWeight.bold,),),
            InputField(
              label: "Email",
              focusNode: _emailNode,
            ),
            SizedBox(height: 2.5.h),
            DefaultButton(
              onPressed: () {
                 showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    content: Text("На вашу почту будет отправлено письмо, перейдите по ссылке для восстановления пароля", style: TextStyle(fontSize: 0.33.dp, fontWeight: FontWeight.bold,),),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text("Хорошо",style:TextStyle(fontSize: 0.33.dp, fontWeight: FontWeight.bold,),),
                      ),
                    ],
                  ),
                );
              },
              child: const Text("Восстановить"),
            ),
          ],
        ),
      ),
    );
  }
}
