import 'package:aqyl_school/core/router/auto_router.dart';
import 'package:aqyl_school/features/role/application/role_manager_cubit.dart';
import 'package:aqyl_school/features/sign/bloc/auth_bloc.dart';
import 'package:aqyl_school/features/sign/bloc/auth_state.dart';
import 'package:aqyl_school/features/sign/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor:
        Colors.grey[50], // set your desired status bar color here
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(authRepository: AuthRepository()),
          ),
          BlocProvider(
            create: (context) => RoleManagerCubit()..getRole(),
          ),
        ],
        child: ResponsiveSizer(
          builder: (context, orientation, screenType) {
            return MaterialApp.router(
              title: 'Aqyl School',
              routerConfig: _appRouter.config(),
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      ),
    );
  }
}
