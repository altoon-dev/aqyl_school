import 'package:aqyl_school/constants/color_constants.dart';
import 'package:aqyl_school/features/home/presentation/home_screen.dart';
import 'package:aqyl_school/features/sign/bloc/auth_event.dart';
import 'package:aqyl_school/features/sign/presentation/signup_page.dart';
import 'package:aqyl_school/features/widgets/buttons/google_button.dart';
import 'package:aqyl_school/features/widgets/titles/logo_title.dart';
import 'package:aqyl_school/features/widgets/titles/welcome_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../core/router/auto_router.gr.dart';
import '../../widgets/buttons/default_button.dart';
import '../../widgets/fields/input_field.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            // Navigating to the dashboard screen if the user is authenticated
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          }
          if (state is AuthError) {
            // Showing the error message if the user has entered invalid credentials
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is Loading) {
              // Showing the loading indicator while the user is signing in
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is UnAuthenticated) {
              // Showing the sign in form if the user is not authenticated
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LogoTitle(),
                  SizedBox(height: 5.h),
                  const WelcomeText(),
                  SizedBox(height: 2.h),
                  Text(
                    "Войдите в профиль",
                    style: TextStyle(
                      fontSize: 0.33.dp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2.5.h),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        InputField(
                          label: 'Email',
                          focusNode: _emailNode,
                          validator: (value) {
                            return value != null &&
                                !EmailValidator.validate(value)
                                ? 'Enter a valid email'
                                : null;
                          },
                        ),
                        SizedBox(height: 3.h,),
                        InputField(
                          label: "Password",
                          focusNode: _passwordNode,
                          obscureText: true,
                          validator: (value) {
                            return value != null && value.length < 6
                                ? "Enter min. 6 characters"
                                : null;
                          },
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            onPressed: () {
                              //route to ForgetPassword
                            },
                            child: Text(
                              'Забыли пароль?',
                              style: TextStyle(
                                fontSize: 0.33.dp,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey, // Adjust the color as needed
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        DefaultButton(
                          onPressed: () => _authenticateWithEmailAndPassword(context),
                          child: const Text("Войти"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 300.w,
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        );
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Не зарегестрированы?",
                          style: TextStyle( fontSize: 0.33.dp,
                            fontWeight: FontWeight.bold,),
                          children: <TextSpan>[
                            TextSpan(text: ' Зарегестрироваться', style: TextStyle( fontSize: 0.33.dp,
                              fontWeight: FontWeight.bold, color: Colors.yellowAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  GoogleButton(onPressed: () {_authenticateWithGoogle(context);}, ),
                ],
              );
            }
            return Container();
          },
        ),
      ),
    );
  }


     void _authenticateWithEmailAndPassword(context) {
      if (_formKey.currentState!.validate()) {
        BlocProvider.of<AuthBloc>(context).add(
          SignInRequested(_emailController.text, _passwordController.text),
        );
      }
    }

    void _authenticateWithGoogle(context) {
      BlocProvider.of<AuthBloc>(context).add(
        GoogleSignInRequested(),
      );
    }
  }
