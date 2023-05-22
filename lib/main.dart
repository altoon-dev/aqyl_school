import 'package:aqyl_school/app.dart';
import 'package:aqyl_school/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(App());
  print("problema");
  print(FirebaseAuth.instance.currentUser?.uid??"uid");
  // final result=await FirebaseFirestore.instance
  //     .collection("users")
  //     .doc(FirebaseAuth.instance.currentUser!.uid)
  //     .get();
  // print(result.data());
}
