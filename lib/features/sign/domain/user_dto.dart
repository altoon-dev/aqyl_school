import 'package:aqyl_school/core/helper.dart';
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
        required String role,
        @DocumentReferenceConverter()
        required List<DocumentReference>? children,
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  DocumentReference? reference,
       }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data()! as Map<String, dynamic>).copyWith(
      reference: doc.reference,
    );
  }

}