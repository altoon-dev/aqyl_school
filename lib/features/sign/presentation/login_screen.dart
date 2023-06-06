import 'package:aqyl_school/constants/color_constants.dart';
import 'package:aqyl_school/features/home/presentation/home_screen.dart';
import 'package:aqyl_school/features/role/application/role_manager_cubit.dart';
import 'package:aqyl_school/features/sign/bloc/auth_event.dart';
import 'package:aqyl_school/features/sign/presentation/sign_up_screen.dart';
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
@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            context.read<RoleManagerCubit>().getRole();
            context.router.replace(const HomeRoute());
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
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 64),
                    const LogoTitle(),
                    SizedBox(height: 2.h),
                    const WelcomeText(),
                    SizedBox(height: 5.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Войдите в профиль",
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
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          context.router.push(const ForgetPass());
                        },
                        child: Text(
                          'Забыл(а) пароль?',
                          style: TextStyle(
                            fontSize: 0.25.dp,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey, // Adjust the color as needed
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    DefaultButton(
                      onPressed: () => _authenticateWithEmailAndPassword(context),
                      child: const Text("Войти"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    Container(
                      width: 100.w,
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: () {
                          context.router.push(const SignUpRoute());
                        },
                        child: RichText(
                          text: TextSpan(
                            text: "Нет аккаунта?",
                            style: TextStyle( fontSize: 0.25.dp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,),
                            children: [
                              TextSpan(text: ' Зарегестрироваться!', style: TextStyle( fontSize: 0.25.dp,
                                fontWeight: FontWeight.bold, color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    GoogleButton(onPressed: () {_authenticateWithGoogle(context);}, ),
                    SizedBox(height: 32),
                  ],
                ),
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
