import 'package:aqyl_school/core/helper.dart';
import 'package:aqyl_school/features/home/domain/lesson.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';

part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String courseName,
    required List<Lesson> lessons,
    @DocumentReferenceConverter()
        required List<DocumentReference> students,
    @DocumentReferenceConverter()
        required DocumentReference teacherReference,
    @DocumentReferenceConverter()
    @JsonKey(ignore: true)
        DocumentReference? reference,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  factory Course.fromFirestore(DocumentSnapshot doc) {
    return Course.fromJson(doc.data()! as Map<String, dynamic>).copyWith(
      reference: doc.reference,
    );
  }
  // factory Course.fromFirestore(QueryDocumentSnapshot doc) {
  //   return Course.fromJson(doc.data()! as Map<String, dynamic>).copyWith(
  //     reference: doc.reference,
  //   );
  // }
}
