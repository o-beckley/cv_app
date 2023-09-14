import 'package:cv_app/models/cv_model.dart';
import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatelessWidget {
  final CVModel model;
  const PersonalInfoScreen({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios)
        ),
        title: const Text('Personal Info'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'name',
                ),
                controller: TextEditingController(text: model.personalInfo['name']),        
                style: Theme.of(context).textTheme.bodySmall,
                keyboardType: TextInputType.name,
                onSubmitted: (value) {
                  model.editPersonalInfo(newName: value);
                },
              ),
              const SizedBox(height: 20),
              TextField( 
                decoration: const InputDecoration(
                  hintText: 'email',
                ),
                controller: TextEditingController(text: model.personalInfo['email']), 
                keyboardType: TextInputType.emailAddress,
                style: Theme.of(context).textTheme.bodySmall,
                onSubmitted: (value) {
                  model.editPersonalInfo(newEmail: value);
                },
              ),
              const SizedBox(height: 20),
              TextField( 
                decoration: const InputDecoration(
                  hintText: 'phone',
                ),
                controller: TextEditingController(text: model.personalInfo['phone']), 
                style: Theme.of(context).textTheme.bodySmall,
                keyboardType: TextInputType.phone,
                onSubmitted: (value) {
                  model.editPersonalInfo(newPhone: value);
                },
              ),
              const SizedBox(height: 20),
              TextField( 
                decoration: const InputDecoration(
                  hintText: 'slack',
                ),
                controller: TextEditingController(text: model.personalInfo['slack']), 
                style: Theme.of(context).textTheme.bodySmall,
                onSubmitted: (value) {
                  model.editPersonalInfo(newSlack: value);
                },
              ),
              const SizedBox(height: 20),
              TextField( 
                decoration: const InputDecoration(
                  hintText: 'github',
                ),
                controller: TextEditingController(text: model.personalInfo['github']), 
                style: Theme.of(context).textTheme.bodySmall,
                onSubmitted: (value) {
                  model.editPersonalInfo(newGithub: value);
                },
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'bio',
                ),
                controller: TextEditingController(text: model.personalInfo['bio']),
                style: Theme.of(context).textTheme.bodySmall,
                onSubmitted: (value) {
                  model.editPersonalInfo(newBio: value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
