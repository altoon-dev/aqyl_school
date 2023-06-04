part of 'student_course_manager_cubit.dart';

@freezed
class StudentCourseManagerState with _$StudentCourseManagerState {
  const factory StudentCourseManagerState.initial() = _Initial;
  const factory StudentCourseManagerState.loadInProgress() = _LoadInProgress;
  const factory StudentCourseManagerState.loadCoursesSuccess(List<Course> courses) = _LoadCoursesSuccess;
  const factory StudentCourseManagerState.loadCoursesFail(String failure) = _LoadCoursesFail;
}