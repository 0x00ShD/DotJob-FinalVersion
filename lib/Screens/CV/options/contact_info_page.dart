import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import '../globals.dart';
import '../back_button.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({Key? key}) : super(key: key);

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
  Color myColor = const Color(0xFF139487);
  int initialIndex = 0;

  final ImagePicker _picker = ImagePicker();

  final GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController address1Controller = TextEditingController();
  final TextEditingController address2Controller = TextEditingController();
  final TextEditingController address3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        leading: backButton(context),
        backgroundColor: const Color(0xFF139487),
        title: const Text("Resume Workspace"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 3.h,
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: width,
              alignment: const Alignment(0, 0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 1.h,
                  ),
                  Expanded(
                    child: InkWell(
                      splashFactory: InkRipple.splashFactory,
                      splashColor: Colors.white.withOpacity(0.2),
                      onTap: () {
                        setState(() {
                          initialIndex = 0;
                        });
                      },
                      child: Ink(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 53),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xFF139487)),
                          child: Column(
                            children: [
                              const Spacer(),
                              const Text(
                                "Contact",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                color: (initialIndex == 0)
                                    ? Colors.white
                                    : Colors.black,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1.h,
                  ),
                  Expanded(
                    child: InkWell(
                      splashFactory: InkRipple.splashFactory,
                      splashColor: Colors.white.withOpacity(0.2),
                      onTap: () {
                        setState(() {
                          initialIndex = 1;
                        });
                      },
                      child: Ink(
                        color: Colors.white,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xFF139487)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Spacer(),
                              const Text(
                                "Photo",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                color: (initialIndex == 1)
                                    ? Colors.white
                                    : Colors.black,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1.h,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 18,
            child: Container(
              color: const Color(0xffEDEDED),
              child: IndexedStack(
                index: initialIndex,
                children: [
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.48,
                          margin: const EdgeInsets.all(20),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          color: Colors.white,
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Expanded(
                              flex: 7,
                              child: Form(
                                key: contactFormKey,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            "assets/icons/user.png",
                                            height: height * 0.048,
                                          ),
                                        ),
                                        SizedBox(width: width * 0.02),
                                        Expanded(
                                          flex: 4,
                                          child: TextFormField(
                                            controller: nameController,
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter your Name First...";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.name = val;
                                              });
                                            },
                                            decoration: const InputDecoration(
                                              hintText: "Name",
                                              label: Text("Name"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            "assets/icons/email.png",
                                            height: height * 0.048,
                                          ),
                                        ),
                                        SizedBox(width: width * 0.02),
                                        Expanded(
                                          flex: 4,
                                          child: TextFormField(
                                            controller: emailController,
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter your Email First...";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.email = val;
                                              });
                                            },
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            decoration: const InputDecoration(
                                              hintText: "Email",
                                              label: Text("Email"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            "assets/icons/smartphone-call.png",
                                            height: height * 0.048,
                                          ),
                                        ),
                                        SizedBox(width: width * 0.02),
                                        Expanded(
                                          flex: 4,
                                          child: TextFormField(
                                            controller: phoneController,
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter your Phone First...";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.phone = val;
                                              });
                                            },
                                            keyboardType: TextInputType.phone,
                                            decoration: const InputDecoration(
                                              hintText: "Phone",
                                              label: Text("Phone"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            "assets/icons/pin.png",
                                            height: height * 0.048,
                                          ),
                                        ),
                                        SizedBox(width: width * 0.02),
                                        Expanded(
                                          flex: 4,
                                          child: TextFormField(
                                            controller: address1Controller,
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter your Address First...";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.address1 = val;
                                              });
                                            },
                                            decoration: const InputDecoration(
                                              hintText:
                                                  "Address (Street, Building No)",
                                              label: Text(
                                                  "Address (Street, Building No)"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(child: Container()),
                                        SizedBox(width: width * 0.02),
                                        Expanded(
                                          flex: 4,
                                          child: TextFormField(
                                            controller: address2Controller,
                                            onSaved: (val) {
                                              setState(() {
                                                Global.address2 = val;
                                              });
                                            },
                                            decoration: const InputDecoration(
                                              hintText: "Address Line 2",
                                              label: Text("Address Line 2"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(child: Container()),
                                        SizedBox(width: width * 0.02),
                                        Expanded(
                                          flex: 4,
                                          child: TextFormField(
                                            controller: address3Controller,
                                            onSaved: (val) {
                                              setState(() {
                                                Global.address3 = val;
                                              });
                                            },
                                            decoration: const InputDecoration(
                                              hintText: "Address Line 3",
                                              label: Text("Address Line 3"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (contactFormKey.currentState!.validate()) {
                                  contactFormKey.currentState!.save();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF139487),
                              ),
                              child: const Text(
                                "Save",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  contactFormKey.currentState!.reset();

                                  nameController.clear();
                                  emailController.clear();
                                  phoneController.clear();
                                  address1Controller.clear();
                                  address2Controller.clear();
                                  address3Controller.clear();
                                  setState(() {
                                    Global.name = null;
                                    Global.email = null;
                                    Global.phone = null;
                                    Global.address1 = null;
                                    Global.address2 = null;
                                    Global.address3 = null;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF139487),
                                ),
                                child: const Text(
                                  "Clear",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: height * 0.29,
                    width: width,
                    margin: const EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          backgroundImage: (Global.image != null)
                              ? FileImage(Global.image!)
                              : null,
                          radius: 60,
                          backgroundColor: const Color(0xffC4C4C4),
                          child: (Global.image == null)
                              ? const Text(
                                  "ADD",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              : const Text(""),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title:
                                    const Text("When You go to pick Image ?"),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () async {
                                      XFile? pickerFile =
                                          await _picker.pickImage(
                                              source: ImageSource.gallery);
                                      setState(() {
                                        Global.image = File(pickerFile!.path);
                                        Navigator.of(context).pop();
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF139487),
                                    ),
                                    child: const Text(
                                      "gallery",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () async {
                                      XFile? pickerFile =
                                          await _picker.pickImage(
                                              source: ImageSource.camera);
                                      setState(() {
                                        Global.image = File(pickerFile!.path);
                                        Navigator.of(context).pop();
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF139487),
                                    ),
                                    child: const Text(
                                      "Camera",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: myColor,
                          ),
                          child: const Icon(Icons.add),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
