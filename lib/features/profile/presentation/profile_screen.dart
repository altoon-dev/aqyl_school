import 'package:aqyl_school/features/role/application/role_manager_cubit.dart';
import 'package:aqyl_school/features/role/domain/role.dart';
import 'package:aqyl_school/features/widgets/buttons/default_button.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../sign/bloc/auth_bloc.dart';
import '../../sign/bloc/auth_event.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 32,),
            CircleAvatar(radius:40,child: Icon(Icons.person,size: 40),),
            SizedBox(height: 8,),
            Text(
              "Имя Фамилия",
              style: TextStyle(
                  color:Color(0xff282F3E),
                  fontSize: 20,
                  ),
            ),
            Text(
              "@irenee",
              style: TextStyle(
                color:Color(0xff888C94),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 54,),
            SizedBox(
              width: double.infinity,
              child: BlocBuilder<RoleManagerCubit,RoleManagerState>(builder: (context,state){
                late final status;
                if(state.role==Role.student){
status="ученик";
                }else if(state.role==Role.parent){
                  status="родитель";
                }else{
                  status="учитель";
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Статус: $status",
                      style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Номер телефона:",
                      style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Адрес:",
                      style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Email:",
                      style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    if(state.role==Role.student)...[
                      SizedBox(height: 8,),
                      Text(
                        "Возраст:",
                        style: TextStyle(
                            color:Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "Группа:",
                        style: TextStyle(
                            color:Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ]else if(state.role==Role.parent)...[
                      SizedBox(height: 8,),
                      Text(
                        "Дочь/Сын:",
                        style: TextStyle(
                            color:Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ]
                    else  ...[
                        SizedBox(height: 8,),
                        Text(
                          "Прикрепленные группы:",
                          style: TextStyle(
                              color:Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ]

                  ],
                );
              }),
            ),
            Center(
              child: DefaultButton(
                  child: Text('выйти с акккаунта'),
                  onPressed: () {
                    context.read<AuthBloc>().add(SignOutRequested());
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
                        context.read<RoleManagerCubit>().setRole(role);
                      },
                      child: Text("Student"),
                    ),
                  ),
                  SizedBox(width: 8,),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final role = getRoleFromString("parent");
                        context.read<RoleManagerCubit>().setRole(role);
                      },
                      child: Text("Parent"),
                    ),
                  ),
                   SizedBox(width: 8,),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final role = getRoleFromString("teacher");
                        context.read<RoleManagerCubit>().setRole(role);
                      },
                      child: Text("Teacher"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
