import 'package:flutter/material.dart';

class JobDetailsDetails extends StatelessWidget {
  const JobDetailsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 15,
          height: 15,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10),
        const Text('CV Sent'),
        const Spacer(),
        Container(
          width: 15,
          height: 15,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10),
        const Text('Rejected'),
        const Spacer(),
        Container(
          width: 15,
          height: 15,
          decoration: const BoxDecoration(
            color: Colors.yellow,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10),
        const Text('Viewed'),
      ],
    );
  }
}
