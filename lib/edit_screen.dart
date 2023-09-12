import 'package:cv_app/views/cards.dart';
import 'package:flutter/material.dart';

import 'models/cv_model.dart';

class EditScreen extends StatefulWidget {
  final CVModel model;
  const EditScreen({required this.model, super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {

  @override
  void initState() {
    super.initState();
    widget.model.addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: [
          PersonalInfoCard(model: widget.model),
          const SizedBox(height: 20),
          ExperienceCard(model: widget.model),
          const SizedBox(height: 20),
          SkillCard(model: widget.model),
          const SizedBox(height: 20),
          EducationCard(model: widget.model),
          const SizedBox(height: 20,),
          LanguageCard(model: widget.model)
        ],
      )),
    );
  }
}
