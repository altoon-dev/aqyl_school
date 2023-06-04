// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      courseName: json['courseName'] as String,
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => Lesson.fromJson(e as Map<String, dynamic>))
          .toList(),
      students: (json['students'] as List<dynamic>)
          .map((e) => const DocumentReferenceConverter()
              .fromJson(e as DocumentReference<Object?>))
          .toList(),
      teacherReference: const DocumentReferenceConverter()
          .fromJson(json['teacherReference'] as DocumentReference<Object?>),
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'courseName': instance.courseName,
      'lessons': instance.lessons,
      'students': instance.students
          .map(const DocumentReferenceConverter().toJson)
          .toList(),
      'teacherReference':
          const DocumentReferenceConverter().toJson(instance.teacherReference),
    };
