import 'package:aqyl_school/core/helper.dart';
import 'package:aqyl_school/features/home/domain/course.dart';
import 'package:aqyl_school/features/home/domain/lesson.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  Future<bool> createLesson(Course course,Lesson lesson)async{
    try{
     await course.reference!.update({
        "lessons": FieldValue.arrayUnion([lesson.toJson()])
      });
return true;
    }catch(e){
      print("catched error $e");
      return false;
    }

  }
}
