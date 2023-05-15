enum Role { student, teacher, parent }

Role getRoleFromString(String role) {
  return Role.values.firstWhere(
    (e) => e.toString() == 'Role.$role',
    orElse: () => Role.student, // default value
  );
}
