import 'package:aqyl_school/features/profile/application/profile_watcher_cubit.dart';
import 'package:aqyl_school/features/role/application/role_manager_cubit.dart';
import 'package:aqyl_school/features/role/domain/role.dart';
import 'package:aqyl_school/features/sign/repositories/auth_repository.dart';
import 'package:aqyl_school/features/widgets/buttons/default_button.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../sign/bloc/auth_bloc.dart';
import '../../sign/bloc/auth_event.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      ProfileWatcherCubit()
        ..getSignedInUser(),
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
                          "@${(FirebaseAuth.instance.currentUser?.email??"user@gmail.com").replaceAll("@gmail.com", "")}",
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
                                      () {
                                        late final status;
                                        if(user.role==Role.student.name){
                                          status="Студент";
                                        }
                                        else if(user.role==Role.parent.name){
                                          status="Родитель";
                                        }else{
                                          status="Учитель";
                                        }
                                    return "Статус: $status";
                                  }(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Номер телефона:",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Адрес:",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Email: ${FirebaseAuth.instance.currentUser?.email??""}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                if (user.role == Role.student.name) ...[
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Возраст:",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Группа:",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ] else
                                  if (user.role == Role.parent.name) ...[
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Дочь/Сын:",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ] else
                                    ...[
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Прикрепленные группы:",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]
                              ],
                            )
                        ),
                        Center(
                          child: DefaultButton(
                              child: Text('выйти с акккаунта'),
                              onPressed: () {
                                context.read<AuthBloc>().add(
                                    SignOutRequested());
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    final role = getRoleFromString("student");
                                    context.read<RoleManagerCubit>().setRole(
                                        role);
                                  },
                                  child: Text("Student"),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    final role = getRoleFromString("parent");
                                    context.read<RoleManagerCubit>().setRole(
                                        role);
                                  },
                                  child: Text("Parent"),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    final role = getRoleFromString("teacher");
                                    context.read<RoleManagerCubit>().setRole(
                                        role);
                                  },
                                  child: Text("Teacher"),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  orElse: () => CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
