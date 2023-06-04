import 'package:aqyl_school/core/helper.dart';
import 'package:aqyl_school/features/home/domain/course.dart';
import 'package:aqyl_school/features/home/domain/report.dart';
import 'package:aqyl_school/features/sign/domain/user_dto.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_report_manager_state.dart';
part 'teacher_report_manager_cubit.freezed.dart';

class TeacherReportManagerCubit extends Cubit<TeacherReportManagerState> {
  TeacherReportManagerCubit() : super(const TeacherReportManagerState.initial());
  Future<void> startWatchAll(Course course) async {
    emit(const TeacherReportManagerState.loadInProgress());
    try {
      List<UserDto> users=[];
      for(int i=0;i<course.students.length;i++){
        final userDto=UserDto.fromFirestore((await course.students[i].get()));
        users.add(userDto);
      }
      FirebaseFirestore.instance.reportsCollection
          .where("courseReference",
          isEqualTo: course.reference)
          .snapshots()
          .map((event) =>
          event.docs.map((e) => Report.fromFirestore(e)).toList())
          .listen((reports) {
        emit(TeacherReportManagerState.loadReportsSuccess(reports,users));
      });
    } catch (e) {
      emit(TeacherReportManagerState.loadCoursesFail(e.toString()));
    }
  }
  Future<void> createReport(Report report)async{
    try{
      await FirebaseFirestore.instance.reportsCollection.add(report.toJson());
      emit(const TeacherReportManagerState.createReportSuccess());
    }catch(e){
      emit(TeacherReportManagerState.createReportFail(e.toString()));
    }

  }

}
