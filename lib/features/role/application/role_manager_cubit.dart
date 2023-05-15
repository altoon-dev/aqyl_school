import 'package:aqyl_school/features/role/domain/role.dart';
import 'package:aqyl_school/features/role/infrastructure/role_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_manager_state.dart';
part 'role_manager_cubit.freezed.dart';

class RoleManagerCubit extends Cubit<RoleManagerState> {
  RoleManagerCubit() : super( RoleManagerState.initial());
  Future<void> setRole(Role role) async {
    await RoleRepository().setRole(role);
    emit(state.copyWith(role: role));
  }
  Future<void> getRole() async {
    final role=await RoleRepository().getRole();
    emit(state.copyWith(role: role));
  }
}
