// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_report_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeacherReportManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() createReportSuccess,
    required TResult Function(String failure) createReportFail,
    required TResult Function(List<Report> reports, List<UserDto> students)
        loadReportsSuccess,
    required TResult Function(String failure) loadCoursesFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? createReportSuccess,
    TResult? Function(String failure)? createReportFail,
    TResult? Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult? Function(String failure)? loadCoursesFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? createReportSuccess,
    TResult Function(String failure)? createReportFail,
    TResult Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult Function(String failure)? loadCoursesFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_CreateReportSuccess value) createReportSuccess,
    required TResult Function(_CreateReportFail value) createReportFail,
    required TResult Function(_LoadCoursesSuccess value) loadReportsSuccess,
    required TResult Function(_LoadCoursesFail value) loadCoursesFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_CreateReportSuccess value)? createReportSuccess,
    TResult? Function(_CreateReportFail value)? createReportFail,
    TResult? Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult? Function(_LoadCoursesFail value)? loadCoursesFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_CreateReportSuccess value)? createReportSuccess,
    TResult Function(_CreateReportFail value)? createReportFail,
    TResult Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult Function(_LoadCoursesFail value)? loadCoursesFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherReportManagerStateCopyWith<$Res> {
  factory $TeacherReportManagerStateCopyWith(TeacherReportManagerState value,
          $Res Function(TeacherReportManagerState) then) =
      _$TeacherReportManagerStateCopyWithImpl<$Res, TeacherReportManagerState>;
}

/// @nodoc
class _$TeacherReportManagerStateCopyWithImpl<$Res,
        $Val extends TeacherReportManagerState>
    implements $TeacherReportManagerStateCopyWith<$Res> {
  _$TeacherReportManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TeacherReportManagerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TeacherReportManagerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() createReportSuccess,
    required TResult Function(String failure) createReportFail,
    required TResult Function(List<Report> reports, List<UserDto> students)
        loadReportsSuccess,
    required TResult Function(String failure) loadCoursesFail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? createReportSuccess,
    TResult? Function(String failure)? createReportFail,
    TResult? Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult? Function(String failure)? loadCoursesFail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? createReportSuccess,
    TResult Function(String failure)? createReportFail,
    TResult Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult Function(String failure)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_CreateReportSuccess value) createReportSuccess,
    required TResult Function(_CreateReportFail value) createReportFail,
    required TResult Function(_LoadCoursesSuccess value) loadReportsSuccess,
    required TResult Function(_LoadCoursesFail value) loadCoursesFail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_CreateReportSuccess value)? createReportSuccess,
    TResult? Function(_CreateReportFail value)? createReportFail,
    TResult? Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult? Function(_LoadCoursesFail value)? loadCoursesFail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_CreateReportSuccess value)? createReportSuccess,
    TResult Function(_CreateReportFail value)? createReportFail,
    TResult Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult Function(_LoadCoursesFail value)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TeacherReportManagerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$TeacherReportManagerStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'TeacherReportManagerState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() createReportSuccess,
    required TResult Function(String failure) createReportFail,
    required TResult Function(List<Report> reports, List<UserDto> students)
        loadReportsSuccess,
    required TResult Function(String failure) loadCoursesFail,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? createReportSuccess,
    TResult? Function(String failure)? createReportFail,
    TResult? Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult? Function(String failure)? loadCoursesFail,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? createReportSuccess,
    TResult Function(String failure)? createReportFail,
    TResult Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult Function(String failure)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_CreateReportSuccess value) createReportSuccess,
    required TResult Function(_CreateReportFail value) createReportFail,
    required TResult Function(_LoadCoursesSuccess value) loadReportsSuccess,
    required TResult Function(_LoadCoursesFail value) loadCoursesFail,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_CreateReportSuccess value)? createReportSuccess,
    TResult? Function(_CreateReportFail value)? createReportFail,
    TResult? Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult? Function(_LoadCoursesFail value)? loadCoursesFail,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_CreateReportSuccess value)? createReportSuccess,
    TResult Function(_CreateReportFail value)? createReportFail,
    TResult Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult Function(_LoadCoursesFail value)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements TeacherReportManagerState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_CreateReportSuccessCopyWith<$Res> {
  factory _$$_CreateReportSuccessCopyWith(_$_CreateReportSuccess value,
          $Res Function(_$_CreateReportSuccess) then) =
      __$$_CreateReportSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateReportSuccessCopyWithImpl<$Res>
    extends _$TeacherReportManagerStateCopyWithImpl<$Res,
        _$_CreateReportSuccess>
    implements _$$_CreateReportSuccessCopyWith<$Res> {
  __$$_CreateReportSuccessCopyWithImpl(_$_CreateReportSuccess _value,
      $Res Function(_$_CreateReportSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateReportSuccess implements _CreateReportSuccess {
  const _$_CreateReportSuccess();

  @override
  String toString() {
    return 'TeacherReportManagerState.createReportSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateReportSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() createReportSuccess,
    required TResult Function(String failure) createReportFail,
    required TResult Function(List<Report> reports, List<UserDto> students)
        loadReportsSuccess,
    required TResult Function(String failure) loadCoursesFail,
  }) {
    return createReportSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? createReportSuccess,
    TResult? Function(String failure)? createReportFail,
    TResult? Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult? Function(String failure)? loadCoursesFail,
  }) {
    return createReportSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? createReportSuccess,
    TResult Function(String failure)? createReportFail,
    TResult Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult Function(String failure)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (createReportSuccess != null) {
      return createReportSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_CreateReportSuccess value) createReportSuccess,
    required TResult Function(_CreateReportFail value) createReportFail,
    required TResult Function(_LoadCoursesSuccess value) loadReportsSuccess,
    required TResult Function(_LoadCoursesFail value) loadCoursesFail,
  }) {
    return createReportSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_CreateReportSuccess value)? createReportSuccess,
    TResult? Function(_CreateReportFail value)? createReportFail,
    TResult? Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult? Function(_LoadCoursesFail value)? loadCoursesFail,
  }) {
    return createReportSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_CreateReportSuccess value)? createReportSuccess,
    TResult Function(_CreateReportFail value)? createReportFail,
    TResult Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult Function(_LoadCoursesFail value)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (createReportSuccess != null) {
      return createReportSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateReportSuccess implements TeacherReportManagerState {
  const factory _CreateReportSuccess() = _$_CreateReportSuccess;
}

/// @nodoc
abstract class _$$_CreateReportFailCopyWith<$Res> {
  factory _$$_CreateReportFailCopyWith(
          _$_CreateReportFail value, $Res Function(_$_CreateReportFail) then) =
      __$$_CreateReportFailCopyWithImpl<$Res>;
  @useResult
  $Res call({String failure});
}

/// @nodoc
class __$$_CreateReportFailCopyWithImpl<$Res>
    extends _$TeacherReportManagerStateCopyWithImpl<$Res, _$_CreateReportFail>
    implements _$$_CreateReportFailCopyWith<$Res> {
  __$$_CreateReportFailCopyWithImpl(
      _$_CreateReportFail _value, $Res Function(_$_CreateReportFail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_CreateReportFail(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateReportFail implements _CreateReportFail {
  const _$_CreateReportFail(this.failure);

  @override
  final String failure;

  @override
  String toString() {
    return 'TeacherReportManagerState.createReportFail(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateReportFail &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateReportFailCopyWith<_$_CreateReportFail> get copyWith =>
      __$$_CreateReportFailCopyWithImpl<_$_CreateReportFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() createReportSuccess,
    required TResult Function(String failure) createReportFail,
    required TResult Function(List<Report> reports, List<UserDto> students)
        loadReportsSuccess,
    required TResult Function(String failure) loadCoursesFail,
  }) {
    return createReportFail(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? createReportSuccess,
    TResult? Function(String failure)? createReportFail,
    TResult? Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult? Function(String failure)? loadCoursesFail,
  }) {
    return createReportFail?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? createReportSuccess,
    TResult Function(String failure)? createReportFail,
    TResult Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult Function(String failure)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (createReportFail != null) {
      return createReportFail(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_CreateReportSuccess value) createReportSuccess,
    required TResult Function(_CreateReportFail value) createReportFail,
    required TResult Function(_LoadCoursesSuccess value) loadReportsSuccess,
    required TResult Function(_LoadCoursesFail value) loadCoursesFail,
  }) {
    return createReportFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_CreateReportSuccess value)? createReportSuccess,
    TResult? Function(_CreateReportFail value)? createReportFail,
    TResult? Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult? Function(_LoadCoursesFail value)? loadCoursesFail,
  }) {
    return createReportFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_CreateReportSuccess value)? createReportSuccess,
    TResult Function(_CreateReportFail value)? createReportFail,
    TResult Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult Function(_LoadCoursesFail value)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (createReportFail != null) {
      return createReportFail(this);
    }
    return orElse();
  }
}

abstract class _CreateReportFail implements TeacherReportManagerState {
  const factory _CreateReportFail(final String failure) = _$_CreateReportFail;

  String get failure;
  @JsonKey(ignore: true)
  _$$_CreateReportFailCopyWith<_$_CreateReportFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadCoursesSuccessCopyWith<$Res> {
  factory _$$_LoadCoursesSuccessCopyWith(_$_LoadCoursesSuccess value,
          $Res Function(_$_LoadCoursesSuccess) then) =
      __$$_LoadCoursesSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Report> reports, List<UserDto> students});
}

/// @nodoc
class __$$_LoadCoursesSuccessCopyWithImpl<$Res>
    extends _$TeacherReportManagerStateCopyWithImpl<$Res, _$_LoadCoursesSuccess>
    implements _$$_LoadCoursesSuccessCopyWith<$Res> {
  __$$_LoadCoursesSuccessCopyWithImpl(
      _$_LoadCoursesSuccess _value, $Res Function(_$_LoadCoursesSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = null,
    Object? students = null,
  }) {
    return _then(_$_LoadCoursesSuccess(
      null == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<Report>,
      null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<UserDto>,
    ));
  }
}

/// @nodoc

class _$_LoadCoursesSuccess implements _LoadCoursesSuccess {
  const _$_LoadCoursesSuccess(
      final List<Report> reports, final List<UserDto> students)
      : _reports = reports,
        _students = students;

  final List<Report> _reports;
  @override
  List<Report> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  final List<UserDto> _students;
  @override
  List<UserDto> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'TeacherReportManagerState.loadReportsSuccess(reports: $reports, students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadCoursesSuccess &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_reports),
      const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCoursesSuccessCopyWith<_$_LoadCoursesSuccess> get copyWith =>
      __$$_LoadCoursesSuccessCopyWithImpl<_$_LoadCoursesSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() createReportSuccess,
    required TResult Function(String failure) createReportFail,
    required TResult Function(List<Report> reports, List<UserDto> students)
        loadReportsSuccess,
    required TResult Function(String failure) loadCoursesFail,
  }) {
    return loadReportsSuccess(reports, students);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? createReportSuccess,
    TResult? Function(String failure)? createReportFail,
    TResult? Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult? Function(String failure)? loadCoursesFail,
  }) {
    return loadReportsSuccess?.call(reports, students);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? createReportSuccess,
    TResult Function(String failure)? createReportFail,
    TResult Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult Function(String failure)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (loadReportsSuccess != null) {
      return loadReportsSuccess(reports, students);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_CreateReportSuccess value) createReportSuccess,
    required TResult Function(_CreateReportFail value) createReportFail,
    required TResult Function(_LoadCoursesSuccess value) loadReportsSuccess,
    required TResult Function(_LoadCoursesFail value) loadCoursesFail,
  }) {
    return loadReportsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_CreateReportSuccess value)? createReportSuccess,
    TResult? Function(_CreateReportFail value)? createReportFail,
    TResult? Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult? Function(_LoadCoursesFail value)? loadCoursesFail,
  }) {
    return loadReportsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_CreateReportSuccess value)? createReportSuccess,
    TResult Function(_CreateReportFail value)? createReportFail,
    TResult Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult Function(_LoadCoursesFail value)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (loadReportsSuccess != null) {
      return loadReportsSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadCoursesSuccess implements TeacherReportManagerState {
  const factory _LoadCoursesSuccess(
          final List<Report> reports, final List<UserDto> students) =
      _$_LoadCoursesSuccess;

  List<Report> get reports;
  List<UserDto> get students;
  @JsonKey(ignore: true)
  _$$_LoadCoursesSuccessCopyWith<_$_LoadCoursesSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadCoursesFailCopyWith<$Res> {
  factory _$$_LoadCoursesFailCopyWith(
          _$_LoadCoursesFail value, $Res Function(_$_LoadCoursesFail) then) =
      __$$_LoadCoursesFailCopyWithImpl<$Res>;
  @useResult
  $Res call({String failure});
}

/// @nodoc
class __$$_LoadCoursesFailCopyWithImpl<$Res>
    extends _$TeacherReportManagerStateCopyWithImpl<$Res, _$_LoadCoursesFail>
    implements _$$_LoadCoursesFailCopyWith<$Res> {
  __$$_LoadCoursesFailCopyWithImpl(
      _$_LoadCoursesFail _value, $Res Function(_$_LoadCoursesFail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_LoadCoursesFail(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadCoursesFail implements _LoadCoursesFail {
  const _$_LoadCoursesFail(this.failure);

  @override
  final String failure;

  @override
  String toString() {
    return 'TeacherReportManagerState.loadCoursesFail(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadCoursesFail &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCoursesFailCopyWith<_$_LoadCoursesFail> get copyWith =>
      __$$_LoadCoursesFailCopyWithImpl<_$_LoadCoursesFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() createReportSuccess,
    required TResult Function(String failure) createReportFail,
    required TResult Function(List<Report> reports, List<UserDto> students)
        loadReportsSuccess,
    required TResult Function(String failure) loadCoursesFail,
  }) {
    return loadCoursesFail(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? createReportSuccess,
    TResult? Function(String failure)? createReportFail,
    TResult? Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult? Function(String failure)? loadCoursesFail,
  }) {
    return loadCoursesFail?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? createReportSuccess,
    TResult Function(String failure)? createReportFail,
    TResult Function(List<Report> reports, List<UserDto> students)?
        loadReportsSuccess,
    TResult Function(String failure)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (loadCoursesFail != null) {
      return loadCoursesFail(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_CreateReportSuccess value) createReportSuccess,
    required TResult Function(_CreateReportFail value) createReportFail,
    required TResult Function(_LoadCoursesSuccess value) loadReportsSuccess,
    required TResult Function(_LoadCoursesFail value) loadCoursesFail,
  }) {
    return loadCoursesFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_CreateReportSuccess value)? createReportSuccess,
    TResult? Function(_CreateReportFail value)? createReportFail,
    TResult? Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult? Function(_LoadCoursesFail value)? loadCoursesFail,
  }) {
    return loadCoursesFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_CreateReportSuccess value)? createReportSuccess,
    TResult Function(_CreateReportFail value)? createReportFail,
    TResult Function(_LoadCoursesSuccess value)? loadReportsSuccess,
    TResult Function(_LoadCoursesFail value)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (loadCoursesFail != null) {
      return loadCoursesFail(this);
    }
    return orElse();
  }
}

abstract class _LoadCoursesFail implements TeacherReportManagerState {
  const factory _LoadCoursesFail(final String failure) = _$_LoadCoursesFail;

  String get failure;
  @JsonKey(ignore: true)
  _$$_LoadCoursesFailCopyWith<_$_LoadCoursesFail> get copyWith =>
      throw _privateConstructorUsedError;
}
