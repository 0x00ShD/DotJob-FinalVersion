import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/HomePage/Top%20Jobs/top_job_card.dart';
import 'package:untitled1/Screens/UserDirection/HomePage/Top%20Jobs/top_job_model.dart';

class TopJobListView extends StatelessWidget {
  const TopJobListView({
    super.key,
  });

  final List<TopJobModel> topjob = const [
    TopJobModel(
        job: 'Design', image: 'assets/Images/pexels-knownasovan-57690.jpg'),
    TopJobModel(
        job: 'Writing and translation',
        image: 'assets/Images/pexels-ketut-subiyanto-4559763.jpg'),
    TopJobModel(
        job: 'Digital marketing',
        image: 'assets/Images/pexels-mikael-blomkvist-6476260.jpg'),
    TopJobModel(
        job: 'Programming', image: 'assets/Images/pexels-goumbik-574071.jpg'),
    TopJobModel(
        job: 'Videos', image: 'assets/Images/pexels-pixabay-257904.jpg'),
    TopJobModel(
        job: 'Engineering',
        image: 'assets/Images/pexels-kateryna-babaieva-1423213-2760241.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: topjob.length,
          itemBuilder: (context, index) {
            return TopJobCard(
              topjob: topjob[index],
            );
          }),
    );
  }
}
