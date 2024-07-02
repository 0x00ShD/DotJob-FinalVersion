import 'package:animate_do/animate_do.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/CV/build_options_page.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/views/dashboard_view.dart';
import 'package:untitled1/Screens/UserDirection/HomePage/home_page.dart';
import 'package:untitled1/Screens/UserDirection/LoginView/login_user.dart';
import 'package:untitled1/Screens/UserDirection/Profile/MyAccount/my_account.dart';
import 'package:untitled1/Screens/UserDirection/Profile/Notification/notifiction.dart';
import 'package:untitled1/Screens/UserDirection/Profile/Security/security.dart';
import 'package:untitled1/Screens/UserDirection/Profile/Terms&Conditions/terms_conditions.dart';

import 'components/profile_menu.dart';
import 'components/profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          leadingWidth: 20.w,
          leading: FadeInLeft(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: Image.asset('assets/Images/Logo.png')),
          actions: <Widget>[
            SizedBox(
              width: 80.w,
              child: Center(
                child: FadeInRight(
                  delay: const Duration(milliseconds: 800),
                  duration: const Duration(milliseconds: 900),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Hi, Shady Mohamed',
                          style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Text(
                        'Let\'s start your career life',
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
            ),
          ],
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          index: 3,
          backgroundColor: const Color(0xFF139487).withOpacity(0.5),
          color: const Color(0xFF139487),
          animationDuration: const Duration(milliseconds: 300),
          items: [
            MaterialButton(
              onPressed: () {
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
              child: const Icon(Icons.switch_account_outlined,
                  size: 30, color: Colors.white),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sizer(
                      builder: (context, orientation, deviceType) =>
                          const DashBoradView(),
                    ),
                  ),
                );
              },
              child: const Icon(Icons.dashboard, size: 30, color: Colors.white),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sizer(
                      builder: (context, orientation, deviceType) =>
                          const HomePage(),
                    ),
                  ),
                );
              },
              child: const Icon(Icons.home, size: 30, color: Colors.white),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sizer(
                      builder: (context, orientation, deviceType) =>
                          const ProfileScreen(),
                    ),
                  ),
                );
              },
              child: const Icon(Icons.account_circle,
                  size: 30, color: Colors.white),
            ),
          ]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            FadeInDown(
                delay: const Duration(milliseconds: 800),
                duration: const Duration(milliseconds: 900),
                child: const ProfilePic()),
            const SizedBox(height: 20),
            FadeInRight(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: ProfileMenu(
                text: "My Account",
                icon: "assets/icons/User Icon.svg",
                press: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sizer(
                        builder: (context, orientation, deviceType) =>
                            const MyAccountPage(),
                      ),
                    ),
                  ),
                },
              ),
            ),
            FadeInLeft(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: ProfileMenu(
                text: "Notifications",
                icon: "assets/icons/Bell.svg",
                press: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sizer(
                        builder: (context, orientation, deviceType) =>
                            const NotificationPage(),
                      ),
                    ),
                  ),
                },
              ),
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: ProfileMenu(
                text: "Security",
                icon: "assets/icons/security-svgrepo-com.svg",
                press: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sizer(
                        builder: (context, orientation, deviceType) =>
                            const SecurityPage(),
                      ),
                    ),
                  ),
                },
              ),
            ),
            // FadeInLeft(
            //   delay: const Duration(milliseconds: 800),
            //   duration: const Duration(milliseconds: 900),
            //   child: ProfileMenu(
            //     text: "Dark mode",
            //     icon: "assets/icons/dark-mode-6682.svg",
            //     press: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => Sizer(
            //             builder: (context, orientation, deviceType) =>
            //                 const DarkModePage(),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            FadeInLeft(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: ProfileMenu(
                text: "Terms & Conditions",
                icon: "assets/icons/terms-and-conditions-icon.svg",
                press: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sizer(
                        builder: (context, orientation, deviceType) =>
                            const TermsCoditions(),
                      ),
                    ),
                  ),
                },
              ),
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: ProfileMenu(
                text: "Log Out",
                icon: "assets/icons/Log out.svg",
                press: () {
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
