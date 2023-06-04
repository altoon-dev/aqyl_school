import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'lesson.freezed.dart';
part 'lesson.g.dart';
@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required String lessonName,
    required String lessonContent,
     List<String>? images,
  }) = _Lesson;
  factory Lesson.fromJson(Map<String, dynamic> json) =>
      _$LessonFromJson(json);
}