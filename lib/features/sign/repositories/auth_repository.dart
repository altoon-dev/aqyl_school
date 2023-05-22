import 'package:aqyl_school/features/role/infrastructure/role_repository.dart';
import 'package:aqyl_school/features/sign/domain/user_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository{
  final _firebaseAuth = FirebaseAuth.instance;

  Option<String> getSignedInUserId() {
    print(_firebaseAuth.currentUser);
    return     optionOf(_firebaseAuth.currentUser?.uid);
  }
  Future<void> signUp({
    required String firstname,
    required String lastname,
    required String email,
    required String password
  }) async {
    try {
      final firebaseFirestore= FirebaseFirestore.instance;
      final role=await RoleRepository().getRole();
      String? userId=(await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)).user?.uid;
      await firebaseFirestore.collection("users").doc(userId).set(
          UserDto(firstName: firstname,lastName: lastname, email: email, role: role.name).toJson()
      );
      print("successFullSignUp");
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'weak-password') {
        throw Exception('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('The account already exists for that email.');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }


  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception('User not found!');
      } else if (e.code == 'wrong-password') {
        throw Exception('Wrong password. Try again!');
      }
    }
  }



  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      throw Exception(e.toString());
    }
  }


  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }



}









