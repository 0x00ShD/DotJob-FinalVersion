import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/utils/app_styles.dart';

class LeftSide extends StatelessWidget {
  final String label;
  const LeftSide({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FadeInLeft(
          delay: const Duration(milliseconds: 800),
          duration: const Duration(milliseconds: 900),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 25),
              fontFamily: 'Arimo',
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
