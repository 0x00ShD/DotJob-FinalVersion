import 'package:flutter/material.dart';

import '../globals.dart';
import '../back_button.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  Color myColor = const Color(0xFF139487);
  var myTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: const Color(0xFF139487).withOpacity(0.8),
  );

  final GlobalKey<FormState> educationFormKey = GlobalKey<FormState>();

  final TextEditingController courseController = TextEditingController();
  final TextEditingController collageController = TextEditingController();
  final TextEditingController marksController = TextEditingController();
  final TextEditingController passYearController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Color myColor = const Color(0xFF139487);
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
        backgroundColor: myColor,
        title: const Text("Education"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 18,
            child: Container(
              color: const Color(0xffEDEDED),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      margin: const EdgeInsets.only(
                          top: 30, bottom: 20, right: 20, left: 20),
                      padding: const EdgeInsets.all(20),
                      child: Form(
                        key: educationFormKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Course/Degree", style: myTextStyle),
                            SizedBox(height: height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Course/Degree First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.course = val;
                                });
                              },
                              controller: courseController,
                              decoration: const InputDecoration(
                                hintText: "B. Tech Information Technology",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: height * 0.015),
                            Text("School/Collage/Institute",
                                style: myTextStyle),
                            SizedBox(height: height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your School/Collage/Institute First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.collage = val;
                                });
                              },
                              controller: collageController,
                              decoration: const InputDecoration(
                                hintText: "Bhagavan Mahavir University",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: height * 0.015),
                            Text("School/Collage/Institute",
                                style: myTextStyle),
                            SizedBox(height: height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Marks/CGPA First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.marks = val;
                                });
                              },
                              controller: marksController,
                              decoration: const InputDecoration(
                                hintText: "70% (or) 7.0 CGPA",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: height * 0.015),
                            Text("Year Of Pass", style: myTextStyle),
                            SizedBox(height: height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Year Of Pass First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.passYear = val;
                                });
                              },
                              keyboardType: TextInputType.number,
                              controller: passYearController,
                              decoration: const InputDecoration(
                                hintText: "2019",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (educationFormKey.currentState!.validate()) {
                              educationFormKey.currentState!.save();

                              setState(() => Navigator.of(context).pop());
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: myColor,
                          ),
                          child: const Text(
                            "Save",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            educationFormKey.currentState!.reset();

                            courseController.clear();
                            collageController.clear();
                            marksController.clear();
                            passYearController.clear();
                            setState(() {
                              Global.course = null;
                              Global.collage = null;
                              Global.marks = null;
                              Global.passYear = null;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: myColor,
                          ),
                          child: const Text(
                            "Clear",
                            style: TextStyle(color: Colors.black),
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
