import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/CompanyDirection/SignUpComapny/sign_up_size_company.dart';
import 'package:untitled1/Screens/CompanyDirection/SignUpComapny/sign_up_tin_company.dart';
import 'package:untitled1/Screens/UserDirection/LoginView/login_user.dart';

class SignUpCompanyYearEstablishment extends StatefulWidget {
  const SignUpCompanyYearEstablishment({super.key});

  @override
  State<SignUpCompanyYearEstablishment> createState() =>
      _SignUpCompanyYearEstablishmentState();
}

class _SignUpCompanyYearEstablishmentState
    extends State<SignUpCompanyYearEstablishment> {
  final yearofestablishment = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String dropdownValue = "Male";

  bool isVisible = false;

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
                  const SignUpCompanyTIN(),
            ),
          ),
        );
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                height: 110.h,
                decoration: const BoxDecoration(color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 900),
                      duration: const Duration(milliseconds: 1000),
                      child: Center(
                          child: Image.asset('assets/Images/Logo.png',
                              height: 10.h)),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInDown(
                          delay: const Duration(milliseconds: 800),
                          duration: const Duration(milliseconds: 900),
                          child: Center(
                            child: Text(
                              'Hi!',
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
                              'Create a new account',
                              style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
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
                            child: FadeInUp(
                              delay: const Duration(milliseconds: 700),
                              duration: const Duration(milliseconds: 800),
                              child: Form(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xFF139487)
                                              .withOpacity(.2)),
                                      child: TextFormField(
                                        controller: yearofestablishment,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "year of establishment is required";
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          icon: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child:
                                                Icon(Icons.calendar_view_week),
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Year of establishment",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    FadeInLeft(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Expanded(
                        child: SizedBox(
                          width: 200,
                          child: Container(
                            padding: const EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: const Border(
                                  bottom: BorderSide(color: Color(0xFF139487)),
                                  top: BorderSide(color: Color(0xFF139487)),
                                  left: BorderSide(color: Color(0xFF139487)),
                                  right: BorderSide(color: Color(0xFF139487)),
                                )),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sizer(
                                      builder:
                                          (context, orientation, deviceType) =>
                                              const SignUpCompanySize(),
                                    ),
                                  ),
                                );
                              },
                              color: Colors.black,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Text(
                                "Next",
                                style: TextStyle(
                                  fontFamily: "Arimo",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Color(0xFF139487),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 800),
                      duration: const Duration(milliseconds: 900),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have account ?!',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
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
                                              const LoginUSerPage(),
                                    ),
                                  ),
                                );
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  color: Color(0xFF139487),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
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

  //
}
