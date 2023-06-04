// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent_child_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParentChildWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<UserDto> children) loadChildrenSuccess,
    required TResult Function(String failure) loadChildrenFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<UserDto> children)? loadChildrenSuccess,
    TResult? Function(String failure)? loadChildrenFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UserDto> children)? loadChildrenSuccess,
    TResult Function(String failure)? loadChildrenFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadChildrenSuccess value) loadChildrenSuccess,
    required TResult Function(_LoadChildrenFail value) loadChildrenFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadChildrenSuccess value)? loadChildrenSuccess,
    TResult? Function(_LoadChildrenFail value)? loadChildrenFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadChildrenSuccess value)? loadChildrenSuccess,
    TResult Function(_LoadChildrenFail value)? loadChildrenFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentChildWatcherStateCopyWith<$Res> {
  factory $ParentChildWatcherStateCopyWith(ParentChildWatcherState value,
          $Res Function(ParentChildWatcherState) then) =
      _$ParentChildWatcherStateCopyWithImpl<$Res, ParentChildWatcherState>;
}

/// @nodoc
class _$ParentChildWatcherStateCopyWithImpl<$Res,
        $Val extends ParentChildWatcherState>
    implements $ParentChildWatcherStateCopyWith<$Res> {
  _$ParentChildWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$ParentChildWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ParentChildWatcherState.initial()';
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
    required TResult Function(List<UserDto> children) loadChildrenSuccess,
    required TResult Function(String failure) loadChildrenFail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<UserDto> children)? loadChildrenSuccess,
    TResult? Function(String failure)? loadChildrenFail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UserDto> children)? loadChildrenSuccess,
    TResult Function(String failure)? loadChildrenFail,
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
    required TResult Function(_LoadChildrenSuccess value) loadChildrenSuccess,
    required TResult Function(_LoadChildrenFail value) loadChildrenFail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadChildrenSuccess value)? loadChildrenSuccess,
    TResult? Function(_LoadChildrenFail value)? loadChildrenFail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadChildrenSuccess value)? loadChildrenSuccess,
    TResult Function(_LoadChildrenFail value)? loadChildrenFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ParentChildWatcherState {
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
    extends _$ParentChildWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'ParentChildWatcherState.loadInProgress()';
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
    required TResult Function(List<UserDto> children) loadChildrenSuccess,
    required TResult Function(String failure) loadChildrenFail,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<UserDto> children)? loadChildrenSuccess,
    TResult? Function(String failure)? loadChildrenFail,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UserDto> children)? loadChildrenSuccess,
    TResult Function(String failure)? loadChildrenFail,
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
    required TResult Function(_LoadChildrenSuccess value) loadChildrenSuccess,
    required TResult Function(_LoadChildrenFail value) loadChildrenFail,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadChildrenSuccess value)? loadChildrenSuccess,
    TResult? Function(_LoadChildrenFail value)? loadChildrenFail,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadChildrenSuccess value)? loadChildrenSuccess,
    TResult Function(_LoadChildrenFail value)? loadChildrenFail,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ParentChildWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadChildrenSuccessCopyWith<$Res> {
  factory _$$_LoadChildrenSuccessCopyWith(_$_LoadChildrenSuccess value,
          $Res Function(_$_LoadChildrenSuccess) then) =
      __$$_LoadChildrenSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserDto> children});
}

/// @nodoc
class __$$_LoadChildrenSuccessCopyWithImpl<$Res>
    extends _$ParentChildWatcherStateCopyWithImpl<$Res, _$_LoadChildrenSuccess>
    implements _$$_LoadChildrenSuccessCopyWith<$Res> {
  __$$_LoadChildrenSuccessCopyWithImpl(_$_LoadChildrenSuccess _value,
      $Res Function(_$_LoadChildrenSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$_LoadChildrenSuccess(
      null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<UserDto>,
    ));
  }
}

/// @nodoc

class _$_LoadChildrenSuccess implements _LoadChildrenSuccess {
  const _$_LoadChildrenSuccess(final List<UserDto> children)
      : _children = children;

  final List<UserDto> _children;
  @override
  List<UserDto> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'ParentChildWatcherState.loadChildrenSuccess(children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadChildrenSuccess &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadChildrenSuccessCopyWith<_$_LoadChildrenSuccess> get copyWith =>
      __$$_LoadChildrenSuccessCopyWithImpl<_$_LoadChildrenSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<UserDto> children) loadChildrenSuccess,
    required TResult Function(String failure) loadChildrenFail,
  }) {
    return loadChildrenSuccess(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<UserDto> children)? loadChildrenSuccess,
    TResult? Function(String failure)? loadChildrenFail,
  }) {
    return loadChildrenSuccess?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UserDto> children)? loadChildrenSuccess,
    TResult Function(String failure)? loadChildrenFail,
    required TResult orElse(),
  }) {
    if (loadChildrenSuccess != null) {
      return loadChildrenSuccess(children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadChildrenSuccess value) loadChildrenSuccess,
    required TResult Function(_LoadChildrenFail value) loadChildrenFail,
  }) {
    return loadChildrenSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadChildrenSuccess value)? loadChildrenSuccess,
    TResult? Function(_LoadChildrenFail value)? loadChildrenFail,
  }) {
    return loadChildrenSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadChildrenSuccess value)? loadChildrenSuccess,
    TResult Function(_LoadChildrenFail value)? loadChildrenFail,
    required TResult orElse(),
  }) {
    if (loadChildrenSuccess != null) {
      return loadChildrenSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadChildrenSuccess implements ParentChildWatcherState {
  const factory _LoadChildrenSuccess(final List<UserDto> children) =
      _$_LoadChildrenSuccess;

  List<UserDto> get children;
  @JsonKey(ignore: true)
  _$$_LoadChildrenSuccessCopyWith<_$_LoadChildrenSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadChildrenFailCopyWith<$Res> {
  factory _$$_LoadChildrenFailCopyWith(
          _$_LoadChildrenFail value, $Res Function(_$_LoadChildrenFail) then) =
      __$$_LoadChildrenFailCopyWithImpl<$Res>;
  @useResult
  $Res call({String failure});
}

/// @nodoc
class __$$_LoadChildrenFailCopyWithImpl<$Res>
    extends _$ParentChildWatcherStateCopyWithImpl<$Res, _$_LoadChildrenFail>
    implements _$$_LoadChildrenFailCopyWith<$Res> {
  __$$_LoadChildrenFailCopyWithImpl(
      _$_LoadChildrenFail _value, $Res Function(_$_LoadChildrenFail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_LoadChildrenFail(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadChildrenFail implements _LoadChildrenFail {
  const _$_LoadChildrenFail(this.failure);

  @override
  final String failure;

  @override
  String toString() {
    return 'ParentChildWatcherState.loadChildrenFail(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadChildrenFail &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadChildrenFailCopyWith<_$_LoadChildrenFail> get copyWith =>
      __$$_LoadChildrenFailCopyWithImpl<_$_LoadChildrenFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<UserDto> children) loadChildrenSuccess,
    required TResult Function(String failure) loadChildrenFail,
  }) {
    return loadChildrenFail(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<UserDto> children)? loadChildrenSuccess,
    TResult? Function(String failure)? loadChildrenFail,
  }) {
    return loadChildrenFail?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<UserDto> children)? loadChildrenSuccess,
    TResult Function(String failure)? loadChildrenFail,
    required TResult orElse(),
  }) {
    if (loadChildrenFail != null) {
      return loadChildrenFail(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadChildrenSuccess value) loadChildrenSuccess,
    required TResult Function(_LoadChildrenFail value) loadChildrenFail,
  }) {
    return loadChildrenFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadChildrenSuccess value)? loadChildrenSuccess,
    TResult? Function(_LoadChildrenFail value)? loadChildrenFail,
  }) {
    return loadChildrenFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadChildrenSuccess value)? loadChildrenSuccess,
    TResult Function(_LoadChildrenFail value)? loadChildrenFail,
    required TResult orElse(),
  }) {
    if (loadChildrenFail != null) {
      return loadChildrenFail(this);
    }
    return orElse();
  }
}

abstract class _LoadChildrenFail implements ParentChildWatcherState {
  const factory _LoadChildrenFail(final String failure) = _$_LoadChildrenFail;

  String get failure;
  @JsonKey(ignore: true)
  _$$_LoadChildrenFailCopyWith<_$_LoadChildrenFail> get copyWith =>
      throw _privateConstructorUsedError;
}
