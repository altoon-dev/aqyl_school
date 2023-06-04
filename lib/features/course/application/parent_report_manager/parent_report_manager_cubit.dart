import 'package:aqyl_school/core/helper.dart';
import 'package:aqyl_school/features/home/domain/course.dart';
import 'package:aqyl_school/features/home/domain/report.dart';
import 'package:aqyl_school/features/sign/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parent_report_manager_state.dart';
part 'parent_report_manager_cubit.freezed.dart';

class ParentReportManagerCubit extends Cubit<ParentReportManagerState> {
  ParentReportManagerCubit() : super(const ParentReportManagerState.initial());
  Future<void> startWatchAll(int childIndex) async {
    emit(const ParentReportManagerState.loadInProgress());
    try {
      final user=await AuthRepository().getSignedInUser();
      FirebaseFirestore.instance.reportsCollection
          .where("studentReference",
          isEqualTo: user.children![childIndex])
          .snapshots()
          .map((event) =>
          event.docs.map((e) => Report.fromFirestore(e)).toList())
          .listen((reports) async {
            List<Course> courses=[];
            for(int i=0;i<reports.length;i++){
              courses.add(Course.fromFirestore(await reports[i].courseReference.get()));
            }
        emit(ParentReportManagerState.loadReportsSuccess(reports,courses));
      });
    } catch (e) {
      emit(ParentReportManagerState.loadCoursesFail(e.toString()));
    }
  }
  Future<bool> createComment(String comment,Report report)async{
    try{
      await report.reference!.update({
        "comments": FieldValue.arrayUnion([comment])
      });
      return true;
    }catch(e){
      print("catched error $e");
      return false;
    }

  }
}
