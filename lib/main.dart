import 'package:cv_app/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CVApp());
}

class CVApp extends StatelessWidget {
  const CVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CV App',
      home: HomeScreen(),
    );
  }
}