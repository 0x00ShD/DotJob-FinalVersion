import 'package:animate_do/animate_do.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/CV/globals.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/views/dashboard_view.dart';
import 'package:untitled1/Screens/UserDirection/HomePage/home_page.dart';

class BuildOptionsPage extends StatefulWidget {
  const BuildOptionsPage({Key? key}) : super(key: key);

  @override
  State<BuildOptionsPage> createState() => _BuildOptionsPageState();
}

class _BuildOptionsPageState extends State<BuildOptionsPage> {
  List<Map> options = [
    {
      "id": 1,
      "option_name": "Contact info",
      "image": "assets/icons/contact_detail-removebg-preview (1).png",
      "routes": "contact_info_page",
    },
    {
      "id": 2,
      "option_name": "Carrier Objective",
      "image": "assets/icons/briefcase.png",
      "routes": "carrier_objective_page",
    },
    {
      "id": 3,
      "option_name": "Personal Details",
      "image": "assets/icons/account.png",
      "routes": "personal_details_page",
    },
    {
      "id": 4,
      "option_name": "Educations",
      "image": "assets/icons/graduation-cap.png",
      "routes": "education_page",
    },
    {
      "id": 5,
      "option_name": "Experience",
      "image": "assets/icons/logical-thinking.png",
      "routes": "experience_page",
    },
    {
      "id": 6,
      "option_name": "Technical Skills",
      "image": "assets/icons/certificate.png",
      "routes": "technical_skills_page",
    },
    {
      "id": 7,
      "option_name": "Interest/Hobbies",
      "image": "assets/icons/open-book.png",
      "routes": "interest_hobbies_page",
    },
    {
      "id": 8,
      "option_name": "Projects",
      "image": "assets/icons/project-management.png",
      "routes": "projects_page",
    },
    {
      "id": 9,
      "option_name": "Achievements",
      "image": "assets/icons/experience.png",
      "routes": "achievement_page",
    },
    {
      "id": 10,
      "option_name": "References",
      "image": "assets/icons/handshake.png",
      "routes": "reference_page",
    },
    {
      "id": 11,
      "option_name": "Declarations",
      "image": "assets/icons/declaration.png",
      "routes": "declaration_page",
    },
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20.w,
        leading: FadeInLeft(
            delay: const Duration(milliseconds: 800),
            duration: const Duration(milliseconds: 900),
            child: Image.asset('assets/Images/Logo.png')),
        actions: [
          SizedBox(
            width: 50.w,
            child: FadeInRight(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Create CV',
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
          InkWell(
            onTap: () {
              if (Global.image != null) {
                Navigator.of(context).pushNamed("pdf_page");
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Select image First...")));
                Navigator.of(context).pushNamed("contact_info_page");
              }
            },
            child: FadeInLeft(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: const SizedBox(
                width: 40,
                child: Icon(Icons.picture_as_pdf),
              ),
            ),
          ),
          SizedBox(
            width: 1.h,
          ),
          FadeInLeft(
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
      body: Column(
        children: [
          SizedBox(height: 3.h),
          Expanded(
            flex: 18,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: FadeInLeft(
                delay: const Duration(milliseconds: 1000),
                duration: const Duration(milliseconds: 500),
                child: Column(
                  children: [
                    ...options.map((option) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(option["routes"]);
                            },
                            child: Row(
                              children: [
                                SizedBox(width: width * 0.04),
                                Image.asset(
                                  option["image"],
                                  height: height * 0.0495,
                                ),
                                SizedBox(width: width * 0.06),
                                Text(
                                  option["option_name"],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                const Spacer(),
                                const Icon(Icons.arrow_forward_ios_sharp),
                                SizedBox(width: width * 0.05),
                              ],
                            ),
                          ),
                          const Divider(),
                        ],
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          backgroundColor: const Color(0xFF139487).withOpacity(0.5),
          color: const Color(0xFF139487),
          animationDuration: const Duration(milliseconds: 300),
          items: [
            IconButton(
              icon: const Icon(Icons.switch_account_outlined,
                  size: 30, color: Colors.white),
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
            IconButton(
              icon: const Icon(Icons.home, size: 30, color: Colors.white),
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
            ),
            const Icon(Icons.account_circle, size: 30, color: Colors.white),
          ]),
    );
  }
}
