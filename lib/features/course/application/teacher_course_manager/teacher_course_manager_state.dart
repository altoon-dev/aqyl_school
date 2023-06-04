part of 'teacher_course_manager_cubit.dart';

@freezed
class TeacherCourseManagerState with _$TeacherCourseManagerState {
  const factory TeacherCourseManagerState.initial() = _Initial;
  const factory TeacherCourseManagerState.loadInProgress() = _LoadInProgress;
  const factory TeacherCourseManagerState.loadCoursesSuccess(List<Course> courses) = _LoadCoursesSuccess;
  const factory TeacherCourseManagerState.loadCoursesFail(String failure) = _LoadCoursesFail;
}
