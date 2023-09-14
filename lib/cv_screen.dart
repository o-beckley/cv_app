import 'package:flutter/material.dart';
import 'models/cv_model.dart';

class CVScreen extends StatelessWidget {
  final CVModel model;
  const CVScreen({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Text(
              '${model.personalInfo['name']}',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary
              ),
            ),
            const SizedBox(height: 30),
            Column(
              // personal info
              children: [
                Container(
                  color: Theme.of(context).colorScheme.primary,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      'Personal Information',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                ...List.generate(model.personalInfo.length, (i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 50,
                          child: Text(
                            model.personalInfo.keys.toList()[i],
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        SizedBox(
                          width: 250,
                          child: Text(
                            model.personalInfo.values.toList()[i],
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  );
                })
              ],
            ),
            const SizedBox(height: 30),
            Column(
              // work experience
              children: [
                Container(
                  color: Theme.of(context).colorScheme.primary,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      'Work Experience',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                ...List.generate(model.workExperiences.length, (i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            model.workExperiences[i].position,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        SizedBox(
                          width: 100,
                          child: Text(
                            '${model.workExperiences[i].years} years',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  );
                })
              ],
            ),
            const SizedBox(height: 30),
            Column(
              // education
              children: [
                Container(
                  color: Theme.of(context).colorScheme.primary,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      'Education',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                ...List.generate(model.educations.length, (i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            model.educations[i].program,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        SizedBox(
                          width: 100,
                          child: Text(
                            model.educations[i].course,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  );
                })
              ],
            ),
            const SizedBox(height: 30),
            Column(
              // languages
              children: [
                Container(
                  color: Theme.of(context).colorScheme.primary,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      'Languages',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                ...List.generate(model.languages.length, (i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            model.languages[i].language,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        SizedBox(
                          width: 100,
                          child: Text(
                            'fluency level:  ${model.languages[i].level}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  );
                })
              ],
            ),
            const SizedBox(height: 30),
            Column(
              // skills
              children: [
                Container(
                  color: Theme.of(context).colorScheme.primary,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      'Skills',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                ...List.generate(model.skills.length, (i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            model.skills[i].name,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        SizedBox(
                          width: 100,
                          child: Text(
                            'skill level:  ${model.skills[i].level}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  );
                })
              ],
            ),
          ],
        ));
  }
}
