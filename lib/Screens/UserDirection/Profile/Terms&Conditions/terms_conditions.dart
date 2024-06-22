import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:untitled1/Screens/UserDirection/Profile/Security/Components/auth.dart';
import 'package:untitled1/Screens/UserDirection/Profile/profile_screen.dart';

class TermsCoditions extends StatefulWidget {
  const TermsCoditions({super.key});

  @override
  State<TermsCoditions> createState() => _TermsCoditionsState();
}

class _TermsCoditionsState extends State<TermsCoditions> {
  Future<String> loadAsset() async {
    return await rootBundle
        .loadString('assets/text/7ea7461b-0126-45e8-bbbe-b8dd6ca1f9b5_en.txt');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20.w,
        title: FadeInUp(
          delay: const Duration(milliseconds: 600),
          duration: const Duration(milliseconds: 700),
          child: const Text(
            "Terms & Conditions",
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
      body: PopScope(
        canPop: false,
        onPopInvoked: (bool didPop) async {
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
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: <Widget>[
                          FadeInDown(
                            delay: const Duration(milliseconds: 800),
                            duration: const Duration(milliseconds: 900),
                            child: FutureBuilder(
                              future: loadAsset(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                } else if (snapshot.hasError) {
                                  return Center(
                                      child: Text('Error: ${snapshot.error}'));
                                } else {
                                  return Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: SingleChildScrollView(
                                      child: Text(
                                        snapshot.data.toString(),
                                        style: const TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
