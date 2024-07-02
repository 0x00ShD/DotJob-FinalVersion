import 'package:animate_do/animate_do.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/CompanyDirection/HomePageCompany/home_page_company.dart';
import 'package:untitled1/Screens/CompanyDirection/PlanPage/basic_plan.dart';
import 'package:untitled1/Screens/CompanyDirection/PlanPage/premium_plan.dart';
import 'package:untitled1/Screens/CompanyDirection/PlanPage/standard_plan.dart';
import 'package:untitled1/Screens/CompanyDirection/Profile/profile_screen_company.dart';

class PlanPage extends StatelessWidget {
  const PlanPage({super.key});

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
              width: 100.w,
              child: Center(
                child: FadeInRight(
                  delay: const Duration(milliseconds: 800),
                  duration: const Duration(milliseconds: 900),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Plans Details',
                          style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),
                ),
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
          index: 0,
          backgroundColor: const Color(0xFF139487).withOpacity(0.5),
          color: const Color(0xFF139487),
          animationDuration: const Duration(milliseconds: 300),
          items: [
            IconButton(
              icon: const Icon(Icons.payment, size: 30, color: Colors.white),
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
            ),
            IconButton(
              icon: const Icon(Icons.home, size: 30, color: Colors.white),
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
            ),
            IconButton(
              icon: const Icon(Icons.apartment, size: 30, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sizer(
                      builder: (context, orientation, deviceType) =>
                          const ProfileScreenCompany(),
                    ),
                  ),
                );
              },
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            FadeInLeft(
                delay: const Duration(milliseconds: 800),
                duration: const Duration(milliseconds: 900),
                child: const BasicPlan()),
            SizedBox(
              height: 2.h,
            ),
            FadeInRight(
                delay: const Duration(milliseconds: 800),
                duration: const Duration(milliseconds: 900),
                child: const StandardPlan()),
            SizedBox(
              height: 2.h,
            ),
            FadeInLeft(
                delay: const Duration(milliseconds: 800),
                duration: const Duration(milliseconds: 900),
                child: const PremiumPlan()),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}
