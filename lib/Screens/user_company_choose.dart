import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/CompanyDirection/company_direction.dart';
import 'package:untitled1/Screens/UserDirection/user_direction.dart';

class UserCompanyChoose extends StatefulWidget {
  const UserCompanyChoose({super.key});

  @override
  State<UserCompanyChoose> createState() => _UserCompanyChooseState();
}

class _UserCompanyChooseState extends State<UserCompanyChoose> {
  var focusNodeEmail = FocusNode();
  var focusNodePassword = FocusNode();
  bool isFocusedEmail = false;
  bool isFocusedPassword = false;

  @override
  void initState() {
    focusNodeEmail.addListener(() {
      setState(() {
        isFocusedEmail = focusNodeEmail.hasFocus;
      });
    });
    focusNodePassword.addListener(() {
      setState(() {
        isFocusedPassword = focusNodePassword.hasFocus;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              height: 100.h,
              decoration: const BoxDecoration(color: Colors.white),
              padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 900),
                    duration: const Duration(milliseconds: 1000),
                    child: Center(
                        child: Image.asset('assets/Images/Logo.png',
                            height: 10.h)),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInDown(
                        delay: const Duration(milliseconds: 800),
                        duration: const Duration(milliseconds: 900),
                        child: Center(
                          child: Text(
                            'Select your Profile Type',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      FadeInDown(
                        delay: const Duration(milliseconds: 700),
                        duration: const Duration(milliseconds: 800),
                        child: Center(
                          child: Text(
                            'Welcome Back.',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      FadeInDown(
                        delay: const Duration(milliseconds: 600),
                        duration: const Duration(milliseconds: 700),
                        child: Center(
                          child: Center(
                            child: Text(
                              'Hire Talents or Get job interview',
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 700),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Sizer(
                                    builder:
                                        (context, orientation, deviceType) =>
                                            const UserDirection(),
                                  ),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                textStyle: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi'),
                                backgroundColor: const Color(0xFF139487),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16)),
                            child: FadeInUp(
                                delay: const Duration(milliseconds: 700),
                                duration: const Duration(milliseconds: 800),
                                child: const Text('Job Seeker',
                                    style: TextStyle(color: Colors.white))),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 700),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Sizer(
                                    builder:
                                        (context, orientation, deviceType) =>
                                            const CompanyDirection(),
                                  ),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                textStyle: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi'),
                                backgroundColor: const Color(0xFF139487),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16)),
                            child: FadeInUp(
                                delay: const Duration(milliseconds: 700),
                                duration: const Duration(milliseconds: 800),
                                child: const Text('Employer',
                                    style: TextStyle(color: Colors.white))),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 800),
                    duration: const Duration(milliseconds: 900),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Choose an option to proceed',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Center(
                              child: Text(
                                'Terms of use',
                                style: TextStyle(
                                  color: Color(0xFF139487),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Center(
                              child: Text(
                                'Help center',
                                style: TextStyle(
                                  color: Color(0xFF139487),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'About us',
                              style: TextStyle(
                                color: Color(0xFF139487),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
