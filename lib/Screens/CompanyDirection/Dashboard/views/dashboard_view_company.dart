import 'package:animate_do/animate_do.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/dashboard_desktop_layout_company.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/dashboard_mobile_layout_company.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/dashboard_tablet_layout_company.dart';
import 'package:untitled1/Screens/CompanyDirection/HomePageCompany/home_page_company.dart';
import 'package:untitled1/Screens/CompanyDirection/Profile/profile_screen_company.dart';
import 'package:untitled1/Screens/PaymentPage/payment_details.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/utils/size_config.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/adaptive_layout_widget.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/custom_drawer.dart';

class DashBoradViewCompany extends StatefulWidget {
  const DashBoradViewCompany({super.key});

  @override
  State<DashBoradViewCompany> createState() => _DashBoradViewCompanyState();
}

class _DashBoradViewCompanyState extends State<DashBoradViewCompany> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
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
          index: 0,
          backgroundColor: const Color(0xFF139487).withOpacity(0.5),
          color: const Color(0xFF139487),
          animationDuration: const Duration(milliseconds: 300),
          items: [
            IconButton(
              icon: const Icon(Icons.dashboard, size: 30, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sizer(
                      builder: (context, orientation, deviceType) =>
                          const DashBoradViewCompany(),
                    ),
                  ),
                );
              },
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
            IconButton(
              icon: const Icon(Icons.payment, size: 30, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sizer(
                      builder: (context, orientation, deviceType) =>
                          const PaymentDetailsView(),
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
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayoutCompany(),
        tabletLayout: (context) => const DashBoardTabletLayoutCompany(),
        desktopLayout: (context) => const DashboardDesktopLayoutCompany(),
      ),
    );
  }
}
