import 'package:animate_do/animate_do.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/CompanyDirection/HomePageCompany/home_page_company.dart';
import 'package:untitled1/Screens/CompanyDirection/LogInCompany/log_in_company.dart';
import 'package:untitled1/Screens/CompanyDirection/PlanPage/plan_page.dart';
import 'package:untitled1/Screens/CompanyDirection/Profile/MyAccount/my_account.dart';
import 'package:untitled1/Screens/CompanyDirection/Profile/components/profile_menu_company.dart';
import 'package:untitled1/Screens/CompanyDirection/Profile/components/profile_pic_company.dart';
import 'package:untitled1/Screens/UserDirection/Profile/Notification/notifiction.dart';
import 'package:untitled1/Screens/UserDirection/Profile/Security/security.dart';
import 'package:untitled1/Screens/UserDirection/Profile/Terms&Conditions/terms_conditions.dart';

class ProfileScreenCompany extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreenCompany({super.key});
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
          index: 2,
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
                          const PlanPage(),
                    ),
                  ),
                );
              },
              child: const Icon(Icons.payment, size: 30, color: Colors.white),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sizer(
                      builder: (context, orientation, deviceType) =>
                          const HomePageCompany(),
                    ),
                  ),
                );
              },
              child: const Icon(Icons.home, size: 30, color: Colors.white),
            ),
            const Icon(Icons.apartment, size: 30, color: Colors.white),
          ]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            FadeInDown(
                delay: const Duration(milliseconds: 800),
                duration: const Duration(milliseconds: 900),
                child: const ProfilePicCompany()),
            const SizedBox(height: 20),
            FadeInRight(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: ProfileMenuCompany(
                text: "Company Account",
                icon: "assets/icons/User Icon.svg",
                press: () => {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sizer(
                        builder: (context, orientation, deviceType) =>
                            const AccountPageCompany(),
                      ),
                    ),
                  ),
                },
              ),
            ),
            FadeInLeft(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: ProfileMenuCompany(
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
              child: ProfileMenuCompany(
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
              child: ProfileMenuCompany(
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
              child: ProfileMenuCompany(
                text: "Log Out",
                icon: "assets/icons/Log out.svg",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sizer(
                        builder: (context, orientation, deviceType) =>
                            const LoginCompanyPage(),
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
