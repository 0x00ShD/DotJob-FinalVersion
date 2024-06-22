import 'package:flutter/material.dart';

import '../globals.dart';
import '../back_button.dart';

class ReferencePage extends StatefulWidget {
  const ReferencePage({Key? key}) : super(key: key);

  @override
  State<ReferencePage> createState() => _ReferencePageState();
}

class _ReferencePageState extends State<ReferencePage> {
  Color myColor = const Color(0xFF139487);
  var myTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: const Color(0xFF139487).withOpacity(0.8),
  );

  final GlobalKey<FormState> referenceFormKey = GlobalKey<FormState>();

  final TextEditingController referenceNameController = TextEditingController();
  final TextEditingController designationController = TextEditingController();
  final TextEditingController organizationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
        title: const Text("Reference"),
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
                        key: referenceFormKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Reference Name", style: myTextStyle),
                            SizedBox(height: height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Reference Name First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.referenceName = val;
                                });
                              },
                              controller: referenceNameController,
                              decoration: const InputDecoration(
                                hintText: "New Enterprise, San Francisco",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: height * 0.015),
                            Text("Designation", style: myTextStyle),
                            SizedBox(height: height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Designation First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.referenceDesignation = val;
                                });
                              },
                              controller: designationController,
                              decoration: const InputDecoration(
                                hintText: "Marketing Manager, ID-342332",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: height * 0.015),
                            Text("Organization/Institute", style: myTextStyle),
                            SizedBox(height: height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Organization/Institute First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.referenceOrganization = val;
                                });
                              },
                              controller: organizationController,
                              decoration: const InputDecoration(
                                hintText: "Green Energy Pvt.Ltd",
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
                            if (referenceFormKey.currentState!.validate()) {
                              referenceFormKey.currentState!.save();

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
                            referenceFormKey.currentState!.reset();

                            referenceNameController.clear();
                            designationController.clear();
                            organizationController.clear();
                            setState(() {
                              Global.referenceName = null;
                              Global.referenceDesignation = null;
                              Global.referenceOrganization = null;
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
