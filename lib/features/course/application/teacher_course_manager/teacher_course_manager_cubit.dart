import 'dart:io';
import 'dart:math';

import 'package:aqyl_school/core/helper.dart';
import 'package:aqyl_school/features/home/domain/course.dart';
import 'package:aqyl_school/features/home/domain/lesson.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_course_manager_cubit.freezed.dart';

part 'teacher_course_manager_state.dart';

class TeacherCourseManagerCubit extends Cubit<TeacherCourseManagerState> {
  TeacherCourseManagerCubit()
      : super(const TeacherCourseManagerState.initial());

  void startWatchAll() async {
    emit(const TeacherCourseManagerState.loadInProgress());
    try {
      final userId = "users/${FirebaseAuth.instance.currentUser!.uid}";

      FirebaseFirestore.instance.coursesCollection
          .where("teacherReference",
              isEqualTo: FirebaseFirestore.instance.doc(userId))
          .snapshots()
          .map((event) =>
              event.docs.map((e) => Course.fromFirestore(e)).toList())
          .listen((courses) {
        emit(TeacherCourseManagerState.loadCoursesSuccess(courses));
      });
    } catch (e) {
      emit(TeacherCourseManagerState.loadCoursesFail(e.toString()));
    }
  }

  Future<bool> createLesson(Course course, Lesson lesson) async {
    try {
      List<String> images = [];
      for (int i = 0;
          i < (lesson.images == null ? 0 : lesson.images!.length);
          i++) {
        File.fromUri(Uri.parse(lesson.images![i]));
        Reference ref = FirebaseStorage.instance
            .ref()
            .child('material')
            .child('/${generateRandomName(lesson.images![i])}');
        final uploadTask = await ref.putFile(File(lesson.images![i]));
        if (uploadTask.state == TaskState.success) {
          String downloadUrl = await ref.getDownloadURL();
          images.add(downloadUrl);
        }
      }

      await course.reference!.update({
        "lessons":
            FieldValue.arrayUnion([lesson.copyWith(images: images).toJson()])
      });
      return true;
    } catch (e) {
      print("catched error $e");
      return false;
    }
  }

  String generateRandomName(String path) {
    String extension = path.split('.').last;
    const characters = 'abcdefghijklmnopqrstuvwxyz0123456789';
    const length = 12;
    final random = Random();

    String randomName = '';

    for (int i = 0; i < length; i++) {
      final randomIndex = random.nextInt(characters.length);
      randomName += characters[randomIndex];
    }

    return "$randomName.$extension";
  }
}
