import 'package:aqyl_school/features/home/domain/lesson.dart';
import 'package:aqyl_school/features/role/application/role_manager_cubit.dart';
import 'package:aqyl_school/features/widgets/buttons/default_button.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LessonScreen extends StatefulWidget {
  const LessonScreen({super.key, required this.lesson, required this.index});

  final Lesson lesson;
  final int index;

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
          useAppBar: true,
          hasBackButton: true,
          appBarTitle: "${widget.lesson.lessonName} - урок ${widget.index}",
          body: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.lesson.lessonName,
                  style: TextStyle(
                      color: Color(0xff004A61),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Страница - 1",
                  style: TextStyle(
                      color: Color(0xff14CBD9),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  widget.lesson.lessonContent,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                BlocBuilder<RoleManagerCubit, RoleManagerState>(
                  builder: (context, state) {
                    return Center(
                      child: DefaultButton(
                        onPressed: () {
                          context.popRoute();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 32),
                          child: Text(
                            "Завершить ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 8,
                          backgroundColor: Color(0xffC9E464),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          )),
    );
  }
}
