import 'package:cv_app/models/cv_model.dart';
import 'package:flutter/material.dart';

class SkillScreen extends StatefulWidget {
  final CVModel model;
  const SkillScreen({required this.model, super.key});

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  final _formKey = GlobalKey<FormState>();
  late String name;
  int level = 1;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Add Skill'),
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
                        hintText: 'skill',
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
                        name = value!;
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'skill level',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Expanded(
                          child: Slider(
                              min: 0,
                              max: 5,
                              divisions: 5,
                              value: level.toDouble(),
                              label: level.toString(),
                              onChanged: (value) {
                                setState(() {
                                  level = value.toInt();
                                });
                              }),
                        ),
                      ],
                    )
                  ],
                ))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            widget.model.editSkillList(
                Skill(name: name, level: level),
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
