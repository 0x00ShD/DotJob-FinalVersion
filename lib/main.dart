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
        "contact_info_page": (context) => const contact_info_page(),
        "carrier_objective_page": (context) => const carrier_objective_page(),
        "personal_details_page": (context) => const personal_details_page(),
        "education_page": (context) => const education_page(),
        "experience_page": (context) => const experience_page(),
        "technical_skills_page": (context) => const technical_skills_page(),
        "interest_hobbies_page": (context) => const interest_hobbies_page(),
        "projects_page": (context) => const projects_page(),
        "achievement_page": (context) => const achievement_page(),
        "reference_page": (context) => const reference_page(),
        "declaration_page": (context) => const declaration_page(),
        "pdf_page": (context) => PDF_Page(),
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
