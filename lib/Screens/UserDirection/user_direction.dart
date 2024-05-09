import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/UserDirection/LoginView/login_user.dart';
import 'package:untitled1/Screens/UserDirection/SignUpView/sign_up.dart';
import 'package:untitled1/Screens/user_company_choose.dart';

class UserDirection extends StatefulWidget {
  const UserDirection({super.key});

  @override
  State<UserDirection> createState() => _UserDirectionState();
}

class _UserDirectionState extends State<UserDirection> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Sizer(
              builder: (context, orientation, deviceType) =>
                  const UserCompanyChoose(),
            ),
          ),
        );
      },
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
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
                          delay: const Duration(milliseconds: 700),
                          duration: const Duration(milliseconds: 800),
                          child: Center(
                            child: Text(
                              'Welcome',
                              style: TextStyle(
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 700),
                          duration: const Duration(milliseconds: 800),
                          child: Center(
                            child: Text(
                              'as a Job seeker',
                              style: TextStyle(
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 700),
                          duration: const Duration(milliseconds: 800),
                          child: Center(
                              child: Image.asset(
                                  'assets/Images/Usability testing.gif')),
                        ),
                      ],
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
                                              const LoginUSerPage(),
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
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16)),
                              child: FadeInUp(
                                  delay: const Duration(milliseconds: 700),
                                  duration: const Duration(milliseconds: 800),
                                  child: const Text('Login',
                                      style: TextStyle(color: Colors.white))),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30)),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Sizer(
                                        builder: (context, orientation,
                                                deviceType) =>
                                            const SignUp(),
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
                                    backgroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16)),
                                child: FadeInUp(
                                    delay: const Duration(milliseconds: 700),
                                    duration: const Duration(milliseconds: 800),
                                    child: const Text('Signup',
                                        style: TextStyle(color: Colors.black))),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
