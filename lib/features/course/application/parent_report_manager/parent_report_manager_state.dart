part of 'parent_report_manager_cubit.dart';


@freezed
class ParentReportManagerState with _$ParentReportManagerState {
  const factory ParentReportManagerState.initial() = _Initial;
  const factory ParentReportManagerState.loadInProgress() = _LoadInProgress;
  const factory ParentReportManagerState.loadReportsSuccess(List<Report> reports,List<Course> courses) = _LoadCoursesSuccess;
  const factory ParentReportManagerState.loadCoursesFail(String failure) = _LoadCoursesFail;
}