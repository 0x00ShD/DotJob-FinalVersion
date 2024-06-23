import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/CompanyDirection/ForgetPasswordCompany/forget_password_company.dart';
import 'package:untitled1/Screens/CompanyDirection/HomePageCompany/home_page_company.dart';
import 'package:untitled1/Screens/CompanyDirection/SignUpComapny/sign_up_photo_company.dart';
import 'package:untitled1/Screens/CompanyDirection/company_direction.dart';
import 'package:untitled1/Screens/UserDirection/user_direction.dart';

class LoginCompanyPage extends StatelessWidget {
  const LoginCompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvoked: (bool didPop) async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Sizer(
                builder: (context, orientation, deviceType) =>
                    const CompanyDirection(),
              ),
            ),
          );
        },
        child: SizedBox(
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
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10.h,
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 900),
                          duration: const Duration(milliseconds: 1000),
                          child: Container(
                            padding: const EdgeInsets.only(left: 40),
                            child: Row(
                              children: [
                                Image.asset('assets/Images/Logo.png',
                                    height: 7.h),
                              ],
                            ),
                          ),
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 700),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Color(0xFF139487),
                                fontFamily: 'Arimo',
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 700),
                          child: Text(
                            "Login to your account",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[700]),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: <Widget>[
                          FadeInDown(
                              delay: const Duration(milliseconds: 600),
                              duration: const Duration(milliseconds: 700),
                              child: inputFile(label: "Email")),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInDown(
                            delay: const Duration(milliseconds: 600),
                            duration: const Duration(milliseconds: 700),
                            child:
                                inputFile(label: "Password", obscureText: true),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInDown(
                            delay: const Duration(milliseconds: 600),
                            duration: const Duration(milliseconds: 700),
                            child: inputFile(
                                label: "Tax Identification Number",
                                obscureText: true),
                          ),
                        ],
                      ),
                    ),
                    FadeInRight(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sizer(
                                      builder:
                                          (context, orientation, deviceType) =>
                                              const ForgetPasswordCompany(),
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'Forget Password?!',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF139487),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 3, left: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: const Border(
                                    bottom: BorderSide(color: Colors.black),
                                    top: BorderSide(color: Colors.black),
                                    left: BorderSide(color: Colors.black),
                                    right: BorderSide(color: Colors.black),
                                  )),
                              child: MaterialButton(
                                minWidth: double.infinity,
                                height: 60,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Sizer(
                                        builder: (context, orientation,
                                                deviceType) =>
                                            const HomePageCompany(),
                                      ),
                                    ),
                                  );
                                },
                                color: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color(0xFF139487),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sizer(
                                      builder:
                                          (context, orientation, deviceType) =>
                                              const SignUpPhotoCampany(),
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'SignUp',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF139487),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            fontSize: 15,
            fontFamily: 'Satoshi',
            fontWeight: FontWeight.w400,
            color: Colors.black87),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: const InputDecoration(
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            hoverColor: Color(0xFF139487),
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Color(0xFF139487)),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black))),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
