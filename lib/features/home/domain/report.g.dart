// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Report _$$_ReportFromJson(Map<String, dynamic> json) => _$_Report(
      reportContent: json['reportContent'] as String,
      comments:
          (json['comments'] as List<dynamic>).map((e) => e as String).toList(),
      lessonIndex: json['lessonIndex'] as int,
      studentReference: const DocumentReferenceConverter()
          .fromJson(json['studentReference'] as DocumentReference<Object?>),
      courseReference: const DocumentReferenceConverter()
          .fromJson(json['courseReference'] as DocumentReference<Object?>),
    );

Map<String, dynamic> _$$_ReportToJson(_$_Report instance) => <String, dynamic>{
      'reportContent': instance.reportContent,
      'comments': instance.comments,
      'lessonIndex': instance.lessonIndex,
      'studentReference':
          const DocumentReferenceConverter().toJson(instance.studentReference),
      'courseReference':
          const DocumentReferenceConverter().toJson(instance.courseReference),
    };
