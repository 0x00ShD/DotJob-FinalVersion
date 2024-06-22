import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/CV/build_options_page.dart';

Widget backButton(context) {
  return FadeInUp(
    delay: const Duration(milliseconds: 600),
    duration: const Duration(milliseconds: 700),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Sizer(
              builder: (context, orientation, deviceType) =>
                  const BuildOptionsPage(),
            ),
          ),
        );
      },
      child: const Icon(Icons.arrow_back_ios_sharp),
    ),
  );
}
