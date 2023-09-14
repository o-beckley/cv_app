import 'package:cv_app/models/cv_model.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  final CVModel model;
  EducationScreen({required this.model, super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    late String program;
    late String course;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Add Education'),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'program',
                      ),
                      style: Theme.of(context).textTheme.bodySmall,
                      validator: (value) {
                        if ((value == '') | (value == null)) {
                          return 'this field is required';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        program = value!;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'course',
                      ),
                      style: Theme.of(context).textTheme.bodySmall,
                      validator: (value) {
                        if ((value == '') | (value == null)) {
                          return 'this field is required';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        course = value!;
                      },
                    ),
                  ],
                ))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            model.editEducationList(
                Education(program: program, course: course),
                add: true);
            Navigator.pop(context);
          }
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Save',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
      ),
    );
  }
}
