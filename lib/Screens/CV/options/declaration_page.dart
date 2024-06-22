import 'package:flutter/material.dart';

import '../globals.dart';
import '../back_button.dart';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({Key? key}) : super(key: key);

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> {
  Color myColor = const Color(0xFF139487);
  var myTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: const Color(0xFF139487).withOpacity(0.8),
  );

  bool switchVal = false;
  final GlobalKey<FormState> declarationFormKey = GlobalKey<FormState>();

  final TextEditingController declarationDecscriptionController =
      TextEditingController();

  final TextEditingController declarationDateController =
      TextEditingController();
  final TextEditingController declarationPlaceController =
      TextEditingController();
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
        backgroundColor: myColor,
        title: const Text("Declaration"),
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
                        key: declarationFormKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Declaration", style: myTextStyle),
                                const Spacer(),
                                Switch(
                                  value: switchVal,
                                  onChanged: (val) {
                                    setState(() {
                                      switchVal = val;
                                    });
                                  },
                                ),
                              ],
                            ),
                            (switchVal == true)
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/icons/target.png",
                                        height: height * 0.06,
                                      ),
                                      SizedBox(height: height * 0.025),
                                      TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter your Description First...";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          setState(() {
                                            Global.declarationDecscription =
                                                val;
                                          });
                                        },
                                        controller:
                                            declarationDecscriptionController,
                                        decoration: const InputDecoration(
                                          hintText: "Description",
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(height: height * 0.025),
                                      Container(color: Colors.grey, height: 1),
                                      SizedBox(height: height * 0.025),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  "Date",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                SizedBox(height: height * 0.04),
                                                TextFormField(
                                                  validator: (val) {
                                                    if (val!.isEmpty) {
                                                      return "Enter your Declaration Date First...";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (val) {
                                                    setState(() {
                                                      Global.declarationDate =
                                                          val;
                                                    });
                                                  },
                                                  keyboardType:
                                                      TextInputType.datetime,
                                                  controller:
                                                      declarationDateController,
                                                  decoration:
                                                      const InputDecoration(
                                                    hintText: "DD/MM/YYYY",
                                                    alignLabelWithHint: true,
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: width * 0.05),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                const Text(
                                                  "Place (Interview Venue/City)",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                SizedBox(height: height * 0.01),
                                                TextFormField(
                                                  validator: (val) {
                                                    if (val!.isEmpty) {
                                                      return "Enter your Declaration Place First...";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (val) {
                                                    setState(() {
                                                      Global.declarationPlace =
                                                          val;
                                                    });
                                                  },
                                                  controller:
                                                      declarationPlaceController,
                                                  decoration:
                                                      const InputDecoration(
                                                    hintText: "Eg. Surat",
                                                    alignLabelWithHint: true,
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                    //Save And Clear Button
                    (switchVal == true)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (declarationFormKey.currentState!
                                      .validate()) {
                                    declarationFormKey.currentState!.save();

                                    setState(() => Navigator.of(context).pop());
                                  }
                                  print(Global.name);
                                  print(Global.email);
                                  print(Global.phone);
                                  print(Global.address1);
                                  print(Global.address2);
                                  print(Global.address3);

                                  print(Global.careerObjectiveDescription);
                                  print(Global.careerObjectiveExperienced);

                                  print(Global.dateOfBirth);
                                  print(Global.maritalStatus);
                                  print(Global.englishCheckBox);
                                  print(Global.hindiCheckBox);
                                  print(Global.gujratiCheckBox);
                                  print(Global.nationality);
                                  print(Global.course);
                                  print(Global.collage);
                                  print(Global.marks);
                                  print(Global.passYear);

                                  print(Global.experienceCompanyName);
                                  print(Global.experienceCollage);
                                  print(Global.experienceRole);
                                  print(Global.experienceEmployedStatus);
                                  print(Global.experienceJoinDate);
                                  print(Global.experienceExitDate);

                                  print(Global.projectTitle);
                                  print(Global.projectRoles);
                                  print(Global.projectTechnologies);
                                  print(Global.projectDescription);
                                  print(Global.projectCheckBoxCProgramming);
                                  print(Global.projectCheckBoxCPP);
                                  print(Global.projectCheckBoxFlutter);

                                  print(Global.referenceName);
                                  print(Global.referenceDesignation);
                                  print(Global.referenceOrganization);

                                  print(Global.declarationDecscription);
                                  print(Global.declarationDate);
                                  print(Global.declarationPlace);

                                  print(Global.technicalSkills);
                                  print(Global.interestHobbies);
                                  print(Global.achievement);
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
                                  declarationFormKey.currentState!.reset();

                                  declarationDecscriptionController.clear();
                                  declarationDateController.clear();
                                  declarationPlaceController.clear();
                                  setState(() {
                                    Global.declarationDecscription = null;
                                    Global.declarationDate = null;
                                    Global.declarationPlace = null;
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
                          )
                        : Container(),
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
