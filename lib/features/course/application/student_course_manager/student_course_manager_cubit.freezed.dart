// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_course_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentCourseManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Course> courses) loadCoursesSuccess,
    required TResult Function(String failure) loadCoursesFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Course> courses)? loadCoursesSuccess,
    TResult? Function(String failure)? loadCoursesFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Course> courses)? loadCoursesSuccess,
    TResult Function(String failure)? loadCoursesFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadCoursesSuccess value) loadCoursesSuccess,
    required TResult Function(_LoadCoursesFail value) loadCoursesFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadCoursesSuccess value)? loadCoursesSuccess,
    TResult? Function(_LoadCoursesFail value)? loadCoursesFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadCoursesSuccess value)? loadCoursesSuccess,
    TResult Function(_LoadCoursesFail value)? loadCoursesFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCourseManagerStateCopyWith<$Res> {
  factory $StudentCourseManagerStateCopyWith(StudentCourseManagerState value,
          $Res Function(StudentCourseManagerState) then) =
      _$StudentCourseManagerStateCopyWithImpl<$Res, StudentCourseManagerState>;
}

/// @nodoc
class _$StudentCourseManagerStateCopyWithImpl<$Res,
        $Val extends StudentCourseManagerState>
    implements $StudentCourseManagerStateCopyWith<$Res> {
  _$StudentCourseManagerStateCopyWithImpl(this._value, this._then);

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
    extends _$StudentCourseManagerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'StudentCourseManagerState.initial()';
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
    required TResult Function(List<Course> courses) loadCoursesSuccess,
    required TResult Function(String failure) loadCoursesFail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Course> courses)? loadCoursesSuccess,
    TResult? Function(String failure)? loadCoursesFail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Course> courses)? loadCoursesSuccess,
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
    required TResult Function(_LoadCoursesSuccess value) loadCoursesSuccess,
    required TResult Function(_LoadCoursesFail value) loadCoursesFail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadCoursesSuccess value)? loadCoursesSuccess,
    TResult? Function(_LoadCoursesFail value)? loadCoursesFail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadCoursesSuccess value)? loadCoursesSuccess,
    TResult Function(_LoadCoursesFail value)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StudentCourseManagerState {
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
    extends _$StudentCourseManagerStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'StudentCourseManagerState.loadInProgress()';
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
    required TResult Function(List<Course> courses) loadCoursesSuccess,
    required TResult Function(String failure) loadCoursesFail,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Course> courses)? loadCoursesSuccess,
    TResult? Function(String failure)? loadCoursesFail,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Course> courses)? loadCoursesSuccess,
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
    required TResult Function(_LoadCoursesSuccess value) loadCoursesSuccess,
    required TResult Function(_LoadCoursesFail value) loadCoursesFail,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadCoursesSuccess value)? loadCoursesSuccess,
    TResult? Function(_LoadCoursesFail value)? loadCoursesFail,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadCoursesSuccess value)? loadCoursesSuccess,
    TResult Function(_LoadCoursesFail value)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements StudentCourseManagerState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadCoursesSuccessCopyWith<$Res> {
  factory _$$_LoadCoursesSuccessCopyWith(_$_LoadCoursesSuccess value,
          $Res Function(_$_LoadCoursesSuccess) then) =
      __$$_LoadCoursesSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Course> courses});
}

/// @nodoc
class __$$_LoadCoursesSuccessCopyWithImpl<$Res>
    extends _$StudentCourseManagerStateCopyWithImpl<$Res, _$_LoadCoursesSuccess>
    implements _$$_LoadCoursesSuccessCopyWith<$Res> {
  __$$_LoadCoursesSuccessCopyWithImpl(
      _$_LoadCoursesSuccess _value, $Res Function(_$_LoadCoursesSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_$_LoadCoursesSuccess(
      null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc

class _$_LoadCoursesSuccess implements _LoadCoursesSuccess {
  const _$_LoadCoursesSuccess(final List<Course> courses) : _courses = courses;

  final List<Course> _courses;
  @override
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'StudentCourseManagerState.loadCoursesSuccess(courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadCoursesSuccess &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

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
    required TResult Function(List<Course> courses) loadCoursesSuccess,
    required TResult Function(String failure) loadCoursesFail,
  }) {
    return loadCoursesSuccess(courses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Course> courses)? loadCoursesSuccess,
    TResult? Function(String failure)? loadCoursesFail,
  }) {
    return loadCoursesSuccess?.call(courses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Course> courses)? loadCoursesSuccess,
    TResult Function(String failure)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (loadCoursesSuccess != null) {
      return loadCoursesSuccess(courses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadCoursesSuccess value) loadCoursesSuccess,
    required TResult Function(_LoadCoursesFail value) loadCoursesFail,
  }) {
    return loadCoursesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadCoursesSuccess value)? loadCoursesSuccess,
    TResult? Function(_LoadCoursesFail value)? loadCoursesFail,
  }) {
    return loadCoursesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadCoursesSuccess value)? loadCoursesSuccess,
    TResult Function(_LoadCoursesFail value)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (loadCoursesSuccess != null) {
      return loadCoursesSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadCoursesSuccess implements StudentCourseManagerState {
  const factory _LoadCoursesSuccess(final List<Course> courses) =
      _$_LoadCoursesSuccess;

  List<Course> get courses;
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
    extends _$StudentCourseManagerStateCopyWithImpl<$Res, _$_LoadCoursesFail>
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
    return 'StudentCourseManagerState.loadCoursesFail(failure: $failure)';
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
    required TResult Function(List<Course> courses) loadCoursesSuccess,
    required TResult Function(String failure) loadCoursesFail,
  }) {
    return loadCoursesFail(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Course> courses)? loadCoursesSuccess,
    TResult? Function(String failure)? loadCoursesFail,
  }) {
    return loadCoursesFail?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Course> courses)? loadCoursesSuccess,
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
    required TResult Function(_LoadCoursesSuccess value) loadCoursesSuccess,
    required TResult Function(_LoadCoursesFail value) loadCoursesFail,
  }) {
    return loadCoursesFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadCoursesSuccess value)? loadCoursesSuccess,
    TResult? Function(_LoadCoursesFail value)? loadCoursesFail,
  }) {
    return loadCoursesFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadCoursesSuccess value)? loadCoursesSuccess,
    TResult Function(_LoadCoursesFail value)? loadCoursesFail,
    required TResult orElse(),
  }) {
    if (loadCoursesFail != null) {
      return loadCoursesFail(this);
    }
    return orElse();
  }
}

abstract class _LoadCoursesFail implements StudentCourseManagerState {
  const factory _LoadCoursesFail(final String failure) = _$_LoadCoursesFail;

  String get failure;
  @JsonKey(ignore: true)
  _$$_LoadCoursesFailCopyWith<_$_LoadCoursesFail> get copyWith =>
      throw _privateConstructorUsedError;
}
