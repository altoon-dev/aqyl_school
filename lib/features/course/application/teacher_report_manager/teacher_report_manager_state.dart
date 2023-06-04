part of 'teacher_report_manager_cubit.dart';


@freezed
class TeacherReportManagerState with _$TeacherReportManagerState {
  const factory TeacherReportManagerState.initial() = _Initial;
  const factory TeacherReportManagerState.loadInProgress() = _LoadInProgress;
  const factory TeacherReportManagerState.createReportSuccess() = _CreateReportSuccess;
  const factory TeacherReportManagerState.createReportFail(String failure) = _CreateReportFail;
  const factory TeacherReportManagerState.loadReportsSuccess(List<Report> reports,List<UserDto> students) = _LoadCoursesSuccess;
  const factory TeacherReportManagerState.loadCoursesFail(String failure) = _LoadCoursesFail;
}