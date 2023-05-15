// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoleManagerState {
  Role get role => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoleManagerStateCopyWith<RoleManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleManagerStateCopyWith<$Res> {
  factory $RoleManagerStateCopyWith(
          RoleManagerState value, $Res Function(RoleManagerState) then) =
      _$RoleManagerStateCopyWithImpl<$Res, RoleManagerState>;
  @useResult
  $Res call({Role role});
}

/// @nodoc
class _$RoleManagerStateCopyWithImpl<$Res, $Val extends RoleManagerState>
    implements $RoleManagerStateCopyWith<$Res> {
  _$RoleManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoleManagerStateCopyWith<$Res>
    implements $RoleManagerStateCopyWith<$Res> {
  factory _$$_RoleManagerStateCopyWith(
          _$_RoleManagerState value, $Res Function(_$_RoleManagerState) then) =
      __$$_RoleManagerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Role role});
}

/// @nodoc
class __$$_RoleManagerStateCopyWithImpl<$Res>
    extends _$RoleManagerStateCopyWithImpl<$Res, _$_RoleManagerState>
    implements _$$_RoleManagerStateCopyWith<$Res> {
  __$$_RoleManagerStateCopyWithImpl(
      _$_RoleManagerState _value, $Res Function(_$_RoleManagerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$_RoleManagerState(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc

class _$_RoleManagerState implements _RoleManagerState {
  _$_RoleManagerState({required this.role});

  @override
  final Role role;

  @override
  String toString() {
    return 'RoleManagerState(role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoleManagerState &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoleManagerStateCopyWith<_$_RoleManagerState> get copyWith =>
      __$$_RoleManagerStateCopyWithImpl<_$_RoleManagerState>(this, _$identity);
}

abstract class _RoleManagerState implements RoleManagerState {
  factory _RoleManagerState({required final Role role}) = _$_RoleManagerState;

  @override
  Role get role;
  @override
  @JsonKey(ignore: true)
  _$$_RoleManagerStateCopyWith<_$_RoleManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}
