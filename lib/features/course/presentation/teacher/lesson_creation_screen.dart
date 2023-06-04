import 'dart:io';

import 'package:aqyl_school/features/course/application/teacher_course_manager/teacher_course_manager_cubit.dart';
import 'package:aqyl_school/features/home/domain/course.dart';
import 'package:aqyl_school/features/home/domain/lesson.dart';
import 'package:aqyl_school/features/widgets/core/custom_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class LessonCreationScreen extends StatefulWidget {
  LessonCreationScreen({super.key, required this.initialCourse});

  final Course initialCourse;

  @override
  State<LessonCreationScreen> createState() => _LessonCreationScreenState();
}

class _LessonCreationScreenState extends State<LessonCreationScreen> {
  final _formKey = GlobalKey<FormState>();
  late String pickedFile;

  final _picker = ImagePicker();
  final _lessonNameController = TextEditingController();
  final _lessonContentController = TextEditingController();

  @override
  void initState() {
    pickedFile = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
          useAppBar: true,
          hasBackButton: true,
          isScrolling: true,
          appBarTitle: "Создание урока",
          actions: [
            IconButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final lesson = Lesson(
                        lessonName: _lessonNameController.text,
                        lessonContent: _lessonContentController.text,
                        images: [
                          pickedFile.isEmpty
                              ? "https://cdn.firstcry.com/education/2022/10/17171912/English-Pronouns.jpg"
                              : pickedFile
                        ]);
                    final isSuccess = await context
                        .read<TeacherCourseManagerCubit>()
                        .createLesson(widget.initialCourse, lesson);
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(isSuccess
                            ? "Урок был успешно добавлен."
                            : "Произошла ошибка!")));
                  }
                },
                icon: Icon(
                  Icons.done,
                  color: Colors.black,
                ))
          ],
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 100,
                    child: TextFormField(
                      validator: (value) {
                        return value != null && value.isEmpty
                            ? "Тема урока не может быть пустой"
                            : null;
                      },
                      controller: _lessonNameController,
                      textCapitalization: TextCapitalization.sentences,
                      maxLines: 1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          contentPadding: EdgeInsets.all(8),
                          hintText: "Тема урока",
                          filled: true,
                          fillColor: Colors.white),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width - 40,
                    child: TextFormField(
                      validator: (value) {
                        return value != null && value.isEmpty
                            ? "Материал урока не может быть пустой"
                            : null;
                      },
                      controller: _lessonContentController,
                      textCapitalization: TextCapitalization.sentences,
                      maxLines: null,
                      expands: true,
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          contentPadding: EdgeInsets.all(8),
                          hintText: "Материал урока",
                          filled: true,
                          fillColor: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  () {
                    if (pickedFile != "") {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width - 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(
                            File(pickedFile),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    } else {
                      return SizedBox();
                    }
                  }(),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 100,
                      child: ElevatedButton(
                          onPressed: () async {
                            pickedFile = await _picker
                                .getImage(source: ImageSource.gallery)
                                .then((value) => value!.path);
                            print(pickedFile);
                            if (pickedFile != "") {
                              setState(() {});
                            }
                          },
                          child: Text(
                              "${pickedFile.isEmpty ? "Добавить" : "Поменять"} картинку к материалу"))),
                  SizedBox(
                    height: 32,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
