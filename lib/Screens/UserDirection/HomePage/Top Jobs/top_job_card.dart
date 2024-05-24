import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/HomePage/Top%20Jobs/top_job_model.dart';

class TopJobCard extends StatelessWidget {
  const TopJobCard({super.key, required this.topjob});

  final TopJobModel topjob;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 110,
        width: 160,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(topjob.image)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: TextButton(
          onPressed: () {},
          child: Text(
            topjob.job,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w200,
                fontFamily: 'Arimo'),
          ),
        )),
      ),
    );
  }
}
