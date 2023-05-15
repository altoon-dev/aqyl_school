import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/auth/presentation/auth_screen.dart';
import 'package:aqyl_school/features/sign/bloc/auth_bloc.dart';
import 'package:aqyl_school/features/sign/bloc/auth_event.dart';
import 'package:aqyl_school/features/sign/bloc/auth_state.dart';
import 'package:aqyl_school/features/widgets/cards/colored_card.dart';
import 'package:aqyl_school/features/widgets/titles/welcome_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/titles/logo_title.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      context.read<AuthBloc>().add(AuthCheckRequested());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
         if(state is Authenticated){
           context.router.replace(HomeRoute());
        }else if(state is UnAuthenticated){
           context.router.replace(WelcomeRoute());
         }
             },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              const SizedBox(height: 30),
              const Text(
                "AQYL School",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
