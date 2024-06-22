import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/CompanyDirection/HomePageCompany/Users/show_all_users_list.dart';

class ShowAllUsers extends StatefulWidget {
  const ShowAllUsers({super.key});

  @override
  State<ShowAllUsers> createState() => _ShowAllUsersState();
}

class _ShowAllUsersState extends State<ShowAllUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20.w,
        title: FadeInUp(
          delay: const Duration(milliseconds: 600),
          duration: const Duration(milliseconds: 700),
          child: const Text(
            "Users",
            style: TextStyle(fontFamily: 'Arimo'),
          ),
        ),
        backgroundColor: const Color(0xFF139487),
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
            flex: 6,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: FadeInUp(
                delay: const Duration(milliseconds: 600),
                duration: const Duration(milliseconds: 700),
                child: Column(
                  children: [
                    const ShowAllUsersList(),
                    SizedBox(
                      height: 3.h,
                    ),
                    const ShowAllUsersList(),
                    SizedBox(
                      height: 3.h,
                    ),
                    const ShowAllUsersList(),
                    SizedBox(
                      height: 3.h,
                    ),
                    const ShowAllUsersList(),
                    SizedBox(
                      height: 3.h,
                    ),
                    const ShowAllUsersList(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
