import 'package:cv_app/models/cv_model.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  final CVModel model;
  ExperienceScreen({required this.model, super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    late String position;
    late int startYear;
    late int endYear;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Add Work Experience'),
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
                        hintText: 'position',
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
                        position = value!;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'start year',
                      ),
                      style: Theme.of(context).textTheme.bodySmall,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if ((value == '') | (value == null)) {
                          return 'this field is required';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        startYear = int.parse(value!.trim());
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'end year',
                      ),
                      style: Theme.of(context).textTheme.bodySmall,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if ((value == '') | (value == null)) {
                          return 'this field is required';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        endYear = int.parse(value!.trim());
                      },
                    )
                  ],
                ))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            model.editExperienceList(
                Experience(
                    position: position, startYear: startYear, endYear: endYear),
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
