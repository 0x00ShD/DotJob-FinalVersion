import 'package:flutter/material.dart';

import '../globals.dart';
import '../back_button.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  Color myColor = const Color(0xFF139487);
  var myTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: const Color(0xFF139487).withOpacity(0.8),
  );
  var myTextStyleForChackBox = const TextStyle(
    fontSize: 17,
    color: Colors.grey,
  );

  final GlobalKey<FormState> projectFormKey = GlobalKey<FormState>();

  final TextEditingController projectTitleController = TextEditingController();
  final TextEditingController rolesController = TextEditingController();
  final TextEditingController technologiesController = TextEditingController();
  final TextEditingController projectDescriptionController =
      TextEditingController();
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
        title: const Text("Projects"),
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
                        key: projectFormKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Project Title", style: myTextStyle),
                            SizedBox(height: height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Project Title First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.projectTitle = val;
                                });
                              },
                              controller: projectTitleController,
                              decoration: const InputDecoration(
                                hintText: "Resume Builder App",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: height * 0.015),
                            Text("Technologies", style: myTextStyle),
                            SizedBox(height: height * 0.015),
                            // Chake Box
                            Row(
                              children: [
                                Checkbox(
                                    value: Global.projectCheckBoxCProgramming,
                                    onChanged: (val) {
                                      setState(() {
                                        Global.projectCheckBoxCProgramming =
                                            val!;
                                      });
                                    }),
                                const SizedBox(width: 10),
                                Text(
                                  "C Programming",
                                  style: myTextStyleForChackBox,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: Global.projectCheckBoxCPP,
                                    onChanged: (val) {
                                      setState(() {
                                        Global.projectCheckBoxCPP = val!;
                                      });
                                    }),
                                const SizedBox(width: 10),
                                Text(
                                  "C++",
                                  style: myTextStyleForChackBox,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: Global.projectCheckBoxFlutter,
                                    onChanged: (val) {
                                      setState(() {
                                        Global.projectCheckBoxFlutter = val!;
                                      });
                                    }),
                                const SizedBox(width: 10),
                                Text(
                                  "Flutter",
                                  style: myTextStyleForChackBox,
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.015),
                            Text("Roles", style: myTextStyle),
                            SizedBox(height: height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Roles First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.projectRoles = val;
                                });
                              },
                              maxLines: 2,
                              controller: rolesController,
                              decoration: const InputDecoration(
                                hintText:
                                    "Organize team members, Code\nanalysis",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: height * 0.015),
                            Text("Technologies", style: myTextStyle),
                            SizedBox(height: height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Technologies First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.projectTechnologies = val;
                                });
                              },
                              controller: technologiesController,
                              decoration: const InputDecoration(
                                hintText: "5 - Programmer",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: height * 0.015),
                            Text("Project Description", style: myTextStyle),
                            SizedBox(height: height * 0.015),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Project Description First...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.projectDescription = val;
                                });
                              },
                              controller: projectDescriptionController,
                              decoration: const InputDecoration(
                                hintText: "Enter Your Project Description",
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
                            if (projectFormKey.currentState!.validate()) {
                              projectFormKey.currentState!.save();

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
                            projectFormKey.currentState!.reset();

                            projectTitleController.clear();
                            rolesController.clear();
                            technologiesController.clear();
                            projectDescriptionController.clear();
                            setState(() {
                              Global.projectTitle = null;
                              Global.projectRoles = null;
                              Global.projectTechnologies = null;
                              Global.projectDescription = null;
                              Global.projectCheckBoxCProgramming = false;
                              Global.projectCheckBoxCPP = false;
                              Global.projectCheckBoxFlutter = false;
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
