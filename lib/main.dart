import 'package:flutter/material.dart';
import 'package:project_eroom/screen/login_screen.dart';

void main() {
  runApp(const ProjectEroomApp());
}

class ProjectEroomApp extends StatelessWidget {
  const ProjectEroomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
