import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShowAllTopJob extends StatefulWidget {
  const ShowAllTopJob({super.key});

  @override
  State<ShowAllTopJob> createState() => _ShowAllTopJobState();
}

class _ShowAllTopJobState extends State<ShowAllTopJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20.w,
        title: FadeInUp(
          delay: const Duration(milliseconds: 600),
          duration: const Duration(milliseconds: 700),
          child: const Text(
            "Top Jobs",
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
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16, left: 10),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/Images/pexels-knownasovan-57690.jpg')),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Design',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Arimo'),
                              ),
                            )),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/Images/pexels-ketut-subiyanto-4559763.jpg')),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Writing and translation',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Arimo'),
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16, left: 10),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/Images/pexels-mikael-blomkvist-6476260.jpg')),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Digital marketing',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Arimo'),
                              ),
                            )),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/Images/pexels-goumbik-574071.jpg')),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Programming',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Arimo'),
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16, left: 10),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/Images/pexels-pixabay-257904.jpg')),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Videos',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Arimo'),
                              ),
                            )),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/Images/pexels-kateryna-babaieva-1423213-2760241.jpg')),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Engineering',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Arimo'),
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16, left: 10),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/Images/pexels-fauxels-3184317.jpg')),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Distance Education',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Arimo'),
                              ),
                            )),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/Images/pexels-gigxels-10492152.jpg')),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Audios',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Arimo'),
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16, left: 10),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/Images/pexels-goumbik-590022.jpg')),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Data',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Arimo'),
                              ),
                            )),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/Images/pexels-olly-926390.jpg')),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Business',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Arimo'),
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
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
