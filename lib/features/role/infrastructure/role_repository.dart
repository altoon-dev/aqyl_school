import 'package:aqyl_school/features/role/domain/role.dart';
import 'package:aqyl_school/features/sign/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RoleRepository {
  Future<Role> getRole() async {
      final sharedPreferences = await SharedPreferences.getInstance();
      final role = getRoleFromString(
          sharedPreferences.getString("role") ?? Role.student.name);
      return role;
  }

  Future<Unit> setRole(Role role) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("role", role.name);
    return unit;
  }
}
