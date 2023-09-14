import 'package:cv_app/models/cv_model.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  final CVModel model;
  const LanguageScreen({required this.model, super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  final _formKey = GlobalKey<FormState>();
  late String language;
  int level = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Add Language'),
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
                        hintText: 'language',
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
                        language = value!;
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'fluency level',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w500
                          ),
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
            widget.model.editLanguageList(Language(language: language, level: level),
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
