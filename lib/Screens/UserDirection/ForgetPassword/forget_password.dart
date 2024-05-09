import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/UserDirection/LoginView/login_user.dart';
import 'package:untitled1/Screens/UserDirection/ForgetPassword/verfication_email.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => const LoginUSerPage()),
      //       );
      //     },
      //     icon: const Icon(
      //       Icons.arrow_back_ios,
      //       size: 20,
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (bool didPop) async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Sizer(
                builder: (context, orientation, deviceType) =>
                    const LoginUSerPage(),
              ),
            ),
          );
        },
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        FadeInDown(
                          delay: const Duration(milliseconds: 900),
                          duration: const Duration(milliseconds: 1000),
                          child: Container(
                            padding: const EdgeInsets.only(left: 40),
                            child: Row(
                              children: [
                                Image.asset('assets/Images/Logo.png',
                                    height: 7.h),
                                FadeInDown(
                                  delay: const Duration(milliseconds: 600),
                                  duration: const Duration(milliseconds: 700),
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: const Text(
                                      "Forget Password",
                                      style: TextStyle(
                                          color: Color(0xFF139487),
                                          fontFamily: 'Arimo',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 700),
                          child: Text(
                            "Please enter your email address to",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[700]),
                          ),
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 700),
                          child: Text(
                            "Recieve a vertication code.",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[700]),
                          ),
                        )
                      ],
                    ),
                    FadeInLeft(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Container(
                        padding: const EdgeInsets.only(top: 100),
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/Images/Forgot password.gif"),
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: <Widget>[
                          FadeInDown(
                              delay: const Duration(milliseconds: 600),
                              duration: const Duration(milliseconds: 700),
                              child: inputFile(label: "Email")),
                        ],
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
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Sizer(
                                        builder: (context, orientation,
                                                deviceType) =>
                                            const VerficationEmail(),
                                      ),
                                    ),
                                  );
                                },
                                color: const Color(0xFF139487),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Text(
                                  "Send Resent Link",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
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
