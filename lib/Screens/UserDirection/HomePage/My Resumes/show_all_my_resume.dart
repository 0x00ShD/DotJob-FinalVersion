import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/UserDirection/HomePage/Companies/show_all_companies_list.dart';

class ShowAllMyResumes extends StatefulWidget {
  const ShowAllMyResumes({super.key});

  @override
  State<ShowAllMyResumes> createState() => _ShowAllMyResumesState();
}

class _ShowAllMyResumesState extends State<ShowAllMyResumes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20.w,
        title: FadeInUp(
          delay: const Duration(milliseconds: 600),
          duration: const Duration(milliseconds: 700),
          child: const Text(
            "My Resumes",
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
                    const ShowAllCompaniesList(),
                    SizedBox(
                      height: 3.h,
                    ),
                    const ShowAllCompaniesList(),
                    SizedBox(
                      height: 3.h,
                    ),
                    const ShowAllCompaniesList(),
                    SizedBox(
                      height: 3.h,
                    ),
                    const ShowAllCompaniesList(),
                    SizedBox(
                      height: 3.h,
                    ),
                    const ShowAllCompaniesList(),
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
