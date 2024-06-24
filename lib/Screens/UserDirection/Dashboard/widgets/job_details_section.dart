import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/custom_background_container.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/job_details_body.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/job_details_header.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      children: [
        FadeInLeft(
            delay: const Duration(milliseconds: 800),
            duration: const Duration(milliseconds: 900),
            child: const JobDetailsHeader()),
        const SizedBox(height: 50),
        FadeInRight(
            delay: const Duration(milliseconds: 800),
            duration: const Duration(milliseconds: 900),
            child: const JobDetailsBody()),
      ],
    ));
  }
}
