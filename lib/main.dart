import 'package:flutter/material.dart';
import 'package:project_eroom/screens/splash_screen.dart';

void main() {
  runApp(const ProjectEroomApp());
}

class ProjectEroomApp extends StatelessWidget {
  const ProjectEroomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
