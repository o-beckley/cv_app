import 'package:cv_app/home.dart';
import 'package:cv_app/models/cv_model.dart';
import 'package:flutter/material.dart';
import 'package:cv_app/theme/theme.dart';

void main() {
  runApp(const CVApp());
}

class CVApp extends StatefulWidget {
  const CVApp({super.key});

  @override
  State<CVApp> createState() => _CVAppState();
}

class _CVAppState extends State<CVApp> {
  late CVModel model;

  @override
  void initState() {
    super.initState();
    model = CVModel()
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV App',
      theme: theme,
      home: Home(model: model),
    );
  }
}
