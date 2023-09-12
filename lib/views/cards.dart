import 'package:flutter/material.dart';
import 'package:cv_app/models/cv_model.dart';
import 'package:cv_app/customize_screens/education_screen.dart';
import 'package:cv_app/customize_screens/language_screen.dart';
import 'package:cv_app/customize_screens/skill_screen.dart';
import 'package:cv_app/customize_screens/experience_screen.dart';
import 'package:cv_app/customize_screens/personal_info_screen.dart';

class PersonalInfoCard extends StatelessWidget {
  final CVModel model;
  const PersonalInfoCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [];
    for (var info in model.personalInfo.entries) {
      content.add(const Divider());
      content.add(SizedBox(
          height: 30,
          child: Row(
            children: [
              Text(
                info.key,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: 150,
                child: Text(
                  info.value,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          )));
    }
    return SectionCard(
        title: 'Personal Info',
        iconButton: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PersonalInfoScreen()));
            },
            icon: Icon(
              Icons.edit_outlined,
              color: Theme.of(context).colorScheme.secondary,
            )),
        content: content);
  }
}

class ExperienceCard extends StatelessWidget {
  final CVModel model;
  const ExperienceCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [];
    for (var experience in model.workExperiences) {
      content.add(const Divider());
      content.add(SizedBox(
        height: 30,
        child: Row(
          children: [
            SizedBox(
                width: 150,
                child: Text(
                  experience.position,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                )),
            const Expanded(child: SizedBox()),
            Text('${experience.years} years',
                style: Theme.of(context).textTheme.bodySmall),
            const Expanded(child: SizedBox()),
            IconButton(
                onPressed: () {
                  //TODO: show dialog box before removing
                  model.editExperienceList(experience, add: false);
                },
                icon: Icon(
                  Icons.remove_outlined,
                  color: Theme.of(context).colorScheme.error,
                ))
          ],
        ),
      ));
    }
    return SectionCard(
      title: 'Work Experience',
      iconButton: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ExperienceScreen()));
          },
          icon: Icon(
            Icons.add_outlined,
            color: Theme.of(context).colorScheme.secondary,
          )),
      content: content,
    );
  }
}

class SkillCard extends StatelessWidget {
  final CVModel model;
  const SkillCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [];
    for (var skill in model.skills) {
      content.add(const Divider());
      content.add(SizedBox(
        height: 30,
        child: Row(
          children: [
            SizedBox(
                width: 150,
                child: Text(
                  skill.name,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                )),
            const Expanded(child: SizedBox()),
            Text(
              'level ${skill.level}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Expanded(child: SizedBox()),
            IconButton(
                onPressed: () {
                  model.editSkillList(skill, add: false);
                },
                icon: Icon(Icons.remove,
                    color: Theme.of(context).colorScheme.error))
          ],
        ),
      ));
    }
    return SectionCard(
        title: 'Skills',
        iconButton: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SkillScreen()));
          },
          icon: Icon(Icons.add, color: Theme.of(context).colorScheme.secondary),
        ),
        content: content);
  }
}

class EducationCard extends StatelessWidget {
  final CVModel model;
  const EducationCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [];
    for (var education in model.educations) {
      content.add(const Divider());
      content.add(SizedBox(
        height: 30,
        child: Row(
          children: [
            SizedBox(
              width: 200,
              child: Text(
                '${education.program} in ${education.course}',
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Expanded(child: SizedBox()),
            IconButton(
                onPressed: () {
                  model.editEducationList(education, add: false);
                },
                icon: Icon(Icons.remove,
                    color: Theme.of(context).colorScheme.error))
          ],
        ),
      ));
    }
    return SectionCard(
      title: 'Education',
      iconButton: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EducationScreen()));
          },
          icon:
              Icon(Icons.add, color: Theme.of(context).colorScheme.secondary)),
      content: content,
    );
  }
}

class LanguageCard extends StatelessWidget {
  final CVModel model;
  const LanguageCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [];
    for (var language in model.languages) {
      content.add(const Divider());
      content.add(SizedBox(
        height: 30,
        child: Row(
          children: [
            SizedBox(
              width: 100,
              child: Text(
                language.language,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Expanded(child: SizedBox()),
            Text('level ${language.level}',
                style: Theme.of(context).textTheme.bodySmall),
            const Expanded(child: SizedBox()),
            IconButton(
                onPressed: () {
                  model.editLanguageList(language, add: false);
                },
                icon: Icon(Icons.remove,
                    color: Theme.of(context).colorScheme.error))
          ],
        ),
      ));
    }
    return SectionCard(
      title: 'Languages',
      iconButton: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LanguageScreen()));
          },
          icon: Icon(
            Icons.add_outlined,
            color: Theme.of(context).colorScheme.secondary,
          )),
      content: content,
    );
  }
}

class SectionCard extends StatelessWidget {
  final String title;
  final IconButton iconButton;
  final List<Widget> content;
  const SectionCard(
      {required this.title,
      required this.iconButton,
      required this.content,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(title, style: Theme.of(context).textTheme.bodyMedium),
                    const Expanded(child: SizedBox()),
                    iconButton
                  ],
                ),
                ...content
              ],
            ),
          ),
        ),
      ),
    );
  }
}
