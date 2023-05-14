import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course'),
        foregroundColor: Colors.black87,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const Center(
        child: Text('Course'),
      ),
    );
  }
}
