// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
  String get reportContent => throw _privateConstructorUsedError;
  List<String> get comments => throw _privateConstructorUsedError;
  int get lessonIndex => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  DocumentReference<Object?> get studentReference =>
      throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  DocumentReference<Object?> get courseReference =>
      throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  DocumentReference<Object?>? get reference =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call(
      {String reportContent,
      List<String> comments,
      int lessonIndex,
      @DocumentReferenceConverter()
          DocumentReference<Object?> studentReference,
      @DocumentReferenceConverter()
          DocumentReference<Object?> courseReference,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          DocumentReference<Object?>? reference});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportContent = null,
    Object? comments = null,
    Object? lessonIndex = null,
    Object? studentReference = null,
    Object? courseReference = null,
    Object? reference = freezed,
  }) {
    return _then(_value.copyWith(
      reportContent: null == reportContent
          ? _value.reportContent
          : reportContent // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lessonIndex: null == lessonIndex
          ? _value.lessonIndex
          : lessonIndex // ignore: cast_nullable_to_non_nullable
              as int,
      studentReference: null == studentReference
          ? _value.studentReference
          : studentReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      courseReference: null == courseReference
          ? _value.courseReference
          : courseReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$_ReportCopyWith(_$_Report value, $Res Function(_$_Report) then) =
      __$$_ReportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reportContent,
      List<String> comments,
      int lessonIndex,
      @DocumentReferenceConverter()
          DocumentReference<Object?> studentReference,
      @DocumentReferenceConverter()
          DocumentReference<Object?> courseReference,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          DocumentReference<Object?>? reference});
}

/// @nodoc
class __$$_ReportCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$_Report>
    implements _$$_ReportCopyWith<$Res> {
  __$$_ReportCopyWithImpl(_$_Report _value, $Res Function(_$_Report) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportContent = null,
    Object? comments = null,
    Object? lessonIndex = null,
    Object? studentReference = null,
    Object? courseReference = null,
    Object? reference = freezed,
  }) {
    return _then(_$_Report(
      reportContent: null == reportContent
          ? _value.reportContent
          : reportContent // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lessonIndex: null == lessonIndex
          ? _value.lessonIndex
          : lessonIndex // ignore: cast_nullable_to_non_nullable
              as int,
      studentReference: null == studentReference
          ? _value.studentReference
          : studentReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      courseReference: null == courseReference
          ? _value.courseReference
          : courseReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Report implements _Report {
  const _$_Report(
      {required this.reportContent,
      required final List<String> comments,
      required this.lessonIndex,
      @DocumentReferenceConverter() required this.studentReference,
      @DocumentReferenceConverter() required this.courseReference,
      @DocumentReferenceConverter() @JsonKey(ignore: true) this.reference})
      : _comments = comments;

  factory _$_Report.fromJson(Map<String, dynamic> json) =>
      _$$_ReportFromJson(json);

  @override
  final String reportContent;
  final List<String> _comments;
  @override
  List<String> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final int lessonIndex;
  @override
  @DocumentReferenceConverter()
  final DocumentReference<Object?> studentReference;
  @override
  @DocumentReferenceConverter()
  final DocumentReference<Object?> courseReference;
  @override
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  final DocumentReference<Object?>? reference;

  @override
  String toString() {
    return 'Report(reportContent: $reportContent, comments: $comments, lessonIndex: $lessonIndex, studentReference: $studentReference, courseReference: $courseReference, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Report &&
            (identical(other.reportContent, reportContent) ||
                other.reportContent == reportContent) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.lessonIndex, lessonIndex) ||
                other.lessonIndex == lessonIndex) &&
            (identical(other.studentReference, studentReference) ||
                other.studentReference == studentReference) &&
            (identical(other.courseReference, courseReference) ||
                other.courseReference == courseReference) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      reportContent,
      const DeepCollectionEquality().hash(_comments),
      lessonIndex,
      studentReference,
      courseReference,
      reference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      __$$_ReportCopyWithImpl<_$_Report>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportToJson(
      this,
    );
  }
}

abstract class _Report implements Report {
  const factory _Report(
      {required final String reportContent,
      required final List<String> comments,
      required final int lessonIndex,
      @DocumentReferenceConverter()
          required final DocumentReference<Object?> studentReference,
      @DocumentReferenceConverter()
          required final DocumentReference<Object?> courseReference,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          final DocumentReference<Object?>? reference}) = _$_Report;

  factory _Report.fromJson(Map<String, dynamic> json) = _$_Report.fromJson;

  @override
  String get reportContent;
  @override
  List<String> get comments;
  @override
  int get lessonIndex;
  @override
  @DocumentReferenceConverter()
  DocumentReference<Object?> get studentReference;
  @override
  @DocumentReferenceConverter()
  DocumentReference<Object?> get courseReference;
  @override
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  DocumentReference<Object?>? get reference;
  @override
  @JsonKey(ignore: true)
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      throw _privateConstructorUsedError;
}
