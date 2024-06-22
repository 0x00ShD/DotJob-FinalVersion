import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/UserDirection/Profile/Notification/components/left_side.dart';
import 'package:untitled1/Screens/UserDirection/Profile/Notification/components/switch.dart';
import 'package:untitled1/Screens/UserDirection/Profile/profile_screen.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20.w,
        title: FadeInUp(
          delay: const Duration(milliseconds: 600),
          duration: const Duration(milliseconds: 700),
          child: const Text(
            "Notification",
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
                      height: 5.h,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              LeftSide(
                                label: 'Special Offers',
                              ),
                              Spacer(),
                              SwitchForm(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              LeftSide(
                                label: 'Vibrate',
                              ),
                              Spacer(),
                              SwitchForm(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              LeftSide(
                                label: 'Sound',
                              ),
                              Spacer(),
                              SwitchForm(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              LeftSide(
                                label: 'General Notification',
                              ),
                              Spacer(),
                              SwitchForm(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              LeftSide(
                                label: 'App Update',
                              ),
                              Spacer(),
                              SwitchForm(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
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
