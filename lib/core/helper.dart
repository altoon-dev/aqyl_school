import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
extension FireStoreX on FirebaseFirestore{
  CollectionReference get coursesCollection => collection("courses");
  CollectionReference get reportsCollection => collection("reports");
  CollectionReference get userCollection => collection("users");
  DocumentReference get dummyRef => doc("test/test");
}
class DocumentReferenceConverter
    implements JsonConverter<DocumentReference, DocumentReference> {
  const DocumentReferenceConverter();

  @override
  DocumentReference fromJson(DocumentReference documentReference) {
    return documentReference;
  }

  @override
  DocumentReference toJson(DocumentReference documentReference) =>
      documentReference;
}