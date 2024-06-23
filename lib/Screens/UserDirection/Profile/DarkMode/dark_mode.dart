import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/UserDirection/Profile/DarkMode/Components/switch_dark_mode.dart';
import 'package:untitled1/Screens/UserDirection/Profile/Notification/components/left_side.dart';

class DarkModePage extends StatelessWidget {
  const DarkModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20.w,
        title: FadeInUp(
          delay: const Duration(milliseconds: 600),
          duration: const Duration(milliseconds: 700),
          child: const Text(
            "Dark Mode",
            style: TextStyle(fontFamily: 'Arimo'),
          ),
        ),
        backgroundColor: const Color(0xFF139487),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              FadeInLeft(
                                delay: const Duration(milliseconds: 800),
                                duration: const Duration(milliseconds: 900),
                                child: SvgPicture.asset(
                                  'assets/icons/dark-mode-6682.svg',
                                  width: 22,
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              const LeftSide(
                                label: 'Dark Theme',
                              ),
                              const Spacer(),
                              const ThemeSwitch(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
