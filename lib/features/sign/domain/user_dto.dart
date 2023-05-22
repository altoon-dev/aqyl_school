import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';
@freezed
abstract class UserDto implements _$UserDto {
  UserDto._();

  factory UserDto(
      {required String firstName,
      required String lastName,
        required String email,
        required String role
       }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);


}