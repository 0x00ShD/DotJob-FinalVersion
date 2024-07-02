import 'package:flutter/material.dart';
import 'package:untitled1/Screens/CV/build_options_page.dart';
import 'package:untitled1/Screens/CV/options/achievement_page.dart';
import 'package:untitled1/Screens/CV/options/carrier_objective_page.dart';
import 'package:untitled1/Screens/CV/options/contact_info_page.dart';
import 'package:untitled1/Screens/CV/options/declaration_page.dart';
import 'package:untitled1/Screens/CV/options/education_page.dart';
import 'package:untitled1/Screens/CV/options/experience_page.dart';
import 'package:untitled1/Screens/CV/options/interest_hobbies_page.dart';
import 'package:untitled1/Screens/CV/options/personal_details_page.dart';
import 'package:untitled1/Screens/CV/options/projects_page.dart';
import 'package:untitled1/Screens/CV/options/reference_page.dart';
import 'package:untitled1/Screens/CV/options/technical_skills_page.dart';
import 'package:untitled1/Screens/CV/pdf_page.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        "build_option_page": (context) => const BuildOptionsPage(),
        "contact_info_page": (context) => const ContactInfoPage(),
        "carrier_objective_page": (context) => const CarrierObjectivePage(),
        "personal_details_page": (context) => const PersonalDetailsPage(),
        "education_page": (context) => const EducationPage(),
        "experience_page": (context) => const ExperiencePage(),
        "technical_skills_page": (context) => const TechnicalSkillsPage(),
        "interest_hobbies_page": (context) => const InterestHobbiesPage(),
        "projects_page": (context) => const ProjectsPage(),
        "achievement_page": (context) => const AchievementPage(),
        "reference_page": (context) => const ReferencePage(),
        "declaration_page": (context) => const DeclarationPage(),
        "pdf_page": (context) => const PDFPage(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
