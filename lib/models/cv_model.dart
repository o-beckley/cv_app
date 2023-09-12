import 'package:flutter/material.dart';

class Experience {
  String position;
  int startYear;
  int endYear;
  late int years;
  Experience({
    required this.position,
    required this.startYear,
    required this.endYear,
  }) {
    years = endYear - startYear;
  }
}

class Education {
  String program;
  String course;
  int startYear;
  int? endYear;
  bool stillEnrolled;
  Education(
      {required this.program,
      required this.course,
      required this.startYear,
      required this.endYear,
      required this.stillEnrolled});
}

class Skill {
  String name;
  int level;
  Skill({required this.name, required this.level});
}

class Language {
  String language;
  int level;
  Language({required this.language, required this.level});
}

class CVModel extends ChangeNotifier {
  // DEFAULTS
  Map<String, String> personalInfo = {
    'name': 'Olasunkanmi Beckley',
    'email': 'beckleysunkanmi @gmail.com',
    'phone': '+234 905 322 1941',
    'slack': 'Olasunkanmi Beckley',
    'github': 'github.com/o-beckley',
    'bio': 'A hard working student',
  };
  List<Experience> workExperiences = [
    Experience(position: 'python developer', startYear: 1841, endYear: 2022),
  ];
  List<Skill> skills = [
    Skill(name: 'python', level: 10),
    Skill(name: 'tensorflow', level: 8),
    Skill(name: 'flutter', level: 9),
  ];
  List<Education> educations = [
    Education(
        program: 'BSc',
        course: 'Civil Engineering',
        startYear: 2020,
        endYear: 2025,
        stillEnrolled: true)
  ];
  List<Language> languages = [
    Language(language: 'English', level: 10),
    Language(language: 'Chinese', level: 5),
    Language(language: 'Yoruba', level: 7)
  ];

  void editPersonalInfo(
      {String? newName,
      String? newEmail,
      String? newPhone,
      String? newSlack,
      String? newGithub,
      String? newBio}) {
    personalInfo['name'] = newName ?? personalInfo['name']!;
    personalInfo['email'] = newEmail ?? personalInfo['email']!;
    personalInfo['phone'] = newPhone ?? personalInfo['phone']!;
    personalInfo['slack'] = newSlack ?? personalInfo['slack']!;
    personalInfo['github'] = newGithub ?? personalInfo['github']!;
    personalInfo['bio'] = newBio ?? personalInfo['bio']!;
    notifyListeners();
  }

  // EXPERIENCES
  void editExperienceList(Experience experience, {required bool add}) {
    add ? workExperiences.add(experience) : workExperiences.remove(experience);
    notifyListeners();
  }

  void editExpirience(int index,
      {String? position, int? startYear, int? endYear}) {
    workExperiences[index] = Experience(
        position: position ?? workExperiences[index].position,
        startYear: startYear ?? workExperiences[index].startYear,
        endYear: endYear ?? workExperiences[index].endYear);
    notifyListeners();
  }

  // SKILLS
  void editSkillList(Skill skill, {required bool add}) {
    add ? skills.add(skill) : skills.remove(skill);
    notifyListeners();
  }

  void editSkill(int index, {String? name, int? level}) {
    skills[index] = Skill(
        name: name ?? skills[index].name, level: level ?? skills[index].level);
    notifyListeners();
  }

  // EDUCATIONS
  void editEducationList(Education education, {required bool add}) {
    add ? educations.add(education) : educations.remove(education);
    notifyListeners();
  }

  void editEducation(int index,
      {String? program, String? course, int? startYear, int? endYear, bool? stillEnrolled}) {
    educations[index] = Education(
        program: program ?? educations[index].program,
        course: course ?? educations[index].course,
        startYear: startYear ?? educations[index].startYear,
        endYear: endYear ?? educations[index].endYear,
        stillEnrolled: stillEnrolled ?? educations[index].stillEnrolled);
    notifyListeners();
  }

  // LANGUAGES
  void editLanguageList(Language language, {required bool add}) {
    add ? languages.add(language) : languages.remove(language);
    notifyListeners();
  }

  void editLanguage(int index, {String? language, int? level}) {
    languages[index] = Language(
        language: language ?? languages[index].language,
        level: level ?? languages[index].level);
    notifyListeners();
  }
}
