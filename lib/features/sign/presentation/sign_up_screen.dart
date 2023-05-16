import 'package:aqyl_school/features/home/presentation/home_screen.dart';
import 'package:aqyl_school/features/sign/presentation/login_screen.dart';
import 'package:aqyl_school/features/widgets/titles/logo_title.dart';
import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../constants/color_constants.dart';
import '../../../core/router/auto_router.gr.dart';
import '../../widgets/buttons/default_button.dart';
import '../../widgets/buttons/google_button.dart';
import '../../widgets/fields/input_field.dart';
import '../../widgets/titles/welcome_text.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';


@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            // Navigating to the dashboard screen if the user is authenticated
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          }
          if (state is AuthError) {
            // Displaying the error message if the user is not authenticated
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            // Displaying the loading indicator while the user is signing up
            return const Center(child: CircularProgressIndicator());
          }
          if (state is UnAuthenticated) {
            // Displaying the sign up form if the user is not authenticated
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LogoTitle(),
                SizedBox(height: 2.h),
                const WelcomeText(),
                SizedBox(height: 5.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Зарегестрируйтесь!",
                      style: TextStyle(
                        fontSize: 0.28.dp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Column(
                      children: [
                        InputField(
                          controller: _emailController,
                          label: 'Email',
                          focusNode: _emailNode,
                          validator: (value) {
                            return value != null &&
                                !EmailValidator.validate(value)
                                ? 'Enter a valid email'
                                : null;
                          },
                        ),
                        InputField(
                          controller: _passwordController,
                          label: "Password",
                          focusNode: _passwordNode,
                          obscureText: true,
                          validator: (value) {
                            return value != null && value.length < 6
                                ? "Enter min. 6 characters"
                                : null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                DefaultButton(
                  onPressed: () {_createAccountWithEmailAndPassword(context);},
                  child: const Text("Зарегестрироваться"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  width: 100.w,
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      context.router.push(const LoginRoute());
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Уже есть аккаунт?",
                        style: TextStyle( fontSize: 0.25.dp, color: Colors.black, fontWeight: FontWeight.bold,),
                        children: <TextSpan>[
                          TextSpan(text: ' Логин', style: TextStyle( fontSize: 0.25.dp,
          fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.h,),
                GoogleButton(onPressed: () {_authenticateWithGoogle(context);}, ),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }

  void _createAccountWithEmailAndPassword(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<AuthBloc>(context).add(
        SignUpRequested(
          _emailController.text,
          _passwordController.text,
        ),
      );
    }
  }

  void _authenticateWithGoogle(context) {
    BlocProvider.of<AuthBloc>(context).add(
      GoogleSignInRequested(),
    );
  }
}