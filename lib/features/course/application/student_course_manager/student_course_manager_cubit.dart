import 'package:aqyl_school/core/helper.dart';
import 'package:aqyl_school/features/home/domain/course.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_course_manager_state.dart';
part 'student_course_manager_cubit.freezed.dart';

class StudentCourseManagerCubit extends Cubit<StudentCourseManagerState> {
  StudentCourseManagerCubit() : super(const StudentCourseManagerState.initial());
  void startWatchAll() async {
    emit(const StudentCourseManagerState.loadInProgress());
    try {
      final userId = "users/${FirebaseAuth.instance.currentUser!.uid}";
      FirebaseFirestore.instance.coursesCollection
          .where("students",
          arrayContains: FirebaseFirestore.instance.doc(userId))
          .snapshots()
          .map((event) =>
          event.docs.map((e) => Course.fromFirestore(e)).toList())
          .listen((courses) {
        emit(StudentCourseManagerState.loadCoursesSuccess(courses));
      });
    } catch (e) {
      emit(StudentCourseManagerState.loadCoursesFail(e.toString()));
    }
  }
}
