import 'package:aqyl_school/core/router/auto_router.gr.dart';
import 'package:aqyl_school/features/course/application/parent_child_watcher/parent_child_watcher_cubit.dart';
import 'package:aqyl_school/features/profile/application/profile_watcher_cubit.dart';
import 'package:aqyl_school/features/role/domain/role.dart';
import 'package:aqyl_school/features/sign/bloc/auth_state.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:aqyl_school/features/widgets/critical_failure_display.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../sign/bloc/auth_bloc.dart';
import '../../sign/bloc/auth_event.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileWatcherCubit()..getSignedInUser(),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is UnAuthenticated) {
            context.router.replaceAll([const SplashRoute()]);
          }
        },
        child: CustomScaffold(
          body: Center(
            child: BlocBuilder<ProfileWatcherCubit, ProfileWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                    loading: (_) => CircularProgressIndicator(),
                    getSignedInUserSuccess: (state) {
                      final user = state.user;
                      return Column(
                        children: [
                          SizedBox(
                            height: 32,
                          ),
                          CircleAvatar(
                            radius: 40,
                            child: Icon(Icons.person, size: 40),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "${user.firstName} ${user.lastName}",
                            style: TextStyle(
                              color: Color(0xff282F3E),
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "@${(FirebaseAuth.instance.currentUser?.email ?? "user@gmail.com").replaceAll("@gmail.com", "")}",
                            style: TextStyle(
                              color: Color(0xff888C94),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 54,
                          ),
                          SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Номер телефона:  8-700-387-21-95",
                                    style: TextStyle(
                                      fontSize: 0.28.dp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Адрес:  Kabanbay batyr 47/1",
                                    style: TextStyle(
                                      fontSize: 0.28.dp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Email: ${FirebaseAuth.instance.currentUser?.email ?? ""}",
                                    style: TextStyle(
                                      fontSize: 0.28.dp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  if (user.role == Role.student.name) ...[
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Возраст:  20",
                                      style: TextStyle(
                                        fontSize: 0.28.dp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Группа:  SE-2015",
                                      style: TextStyle(
                                        fontSize: 0.28.dp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ] else if (user.role == Role.parent.name) ...[
                                    SizedBox(
                                      height: 20,
                                    ),
                                    BlocBuilder<ParentChildWatcherCubit,
                                        ParentChildWatcherState>(
                                      builder: (context, state) {
                                        return state.map(
                                            initial: (_) => const SizedBox(),
                                            loadInProgress: (_) =>
                                                CircularProgressIndicator(),
                                            loadChildrenSuccess: (state) {
                                              return Text(
                                                "Дочь/Сын:  ${state.children.first.firstName}",
                                                style: TextStyle(
                                                  fontSize: 0.28.dp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              );
                                            },
                                            loadChildrenFail: (_) =>
                                                ProjectCriticalFailureDisplay());
                                      },
                                    ),
                                  ] else ...[
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Прикрепленные группы:  SE-2015",
                                      style: TextStyle(
                                        fontSize: 0.28.dp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]
                                ],
                              )),
                          SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width - 200,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    context
                                        .read<AuthBloc>()
                                        .add(SignOutRequested());
                                  },
                                  child: Text("Выйти"))),
                        ],
                      );
                    },
                    orElse: () => CircularProgressIndicator());
              },
            ),
          ),
        ),
      ),
    );
  }
}
