import 'package:aqyl_school/core/helper.dart';
import 'package:aqyl_school/features/home/domain/lesson.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';

part 'report.g.dart';

@freezed
class Report with _$Report {
  const factory Report({
    required String reportContent,
    required List<String> comments,
    required int lessonIndex,
    @DocumentReferenceConverter()
    required DocumentReference studentReference,
    @DocumentReferenceConverter()
    required DocumentReference courseReference,
    @DocumentReferenceConverter()
    @JsonKey(ignore: true)
    DocumentReference? reference,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);

  factory Report.fromFirestore(QueryDocumentSnapshot doc) {
    return Report.fromJson(doc.data()! as Map<String, dynamic>).copyWith(
      reference: doc.reference,
    );
  }
}
