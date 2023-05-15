part of 'role_manager_cubit.dart';


@freezed
class RoleManagerState with _$RoleManagerState{
  factory RoleManagerState({required Role role})= _RoleManagerState;
  factory RoleManagerState.initial()=>RoleManagerState(role: Role.student);
}