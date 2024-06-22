import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../globals.dart';
import '../back_button.dart';

class AchievementPage extends StatefulWidget {
  const AchievementPage({Key? key}) : super(key: key);

  @override
  State<AchievementPage> createState() => _AchievementPageState();
}

class _AchievementPageState extends State<AchievementPage> {
  List allTextFildList = [];
  List<TextEditingController> allControllers = [];
  @override
  void initState() {
    super.initState();

    allControllers.add(TextEditingController());
    allControllers.add(TextEditingController());

    allTextFildList.add(getTextFild(i: 0, row: const Row()));
    allTextFildList.add(getTextFild(i: 1, row: const Row()));
  }

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
        title: FadeInRight(
            delay: const Duration(milliseconds: 600),
            duration: const Duration(milliseconds: 700),
            child: const Text("Achievement")),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 18,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: const Color(0xffEDEDED),
                child: Container(
                  color: Colors.white,
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.02),
                          FadeInLeft(
                            delay: const Duration(milliseconds: 600),
                            duration: const Duration(milliseconds: 700),
                            child: Text(
                              "Enter Your Achievement",
                              style: TextStyle(
                                color: Colors.grey.withOpacity(0.7),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          FadeInRight(
                              delay: const Duration(milliseconds: 600),
                              duration: const Duration(milliseconds: 700),
                              child: SizedBox(height: height * 0.02)),
                          ...allTextFildList
                              .map((e) => getTextFild(
                                  i: allTextFildList.indexOf(e), row: e))
                              .toList(),
                          SizedBox(height: height * 0.06),
                          FadeInDown(
                            delay: const Duration(milliseconds: 600),
                            duration: const Duration(milliseconds: 700),
                            child: SizedBox(
                              height: height * 0.055,
                              width: width,
                              child: OutlinedButton(
                                child: const Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    allControllers.add(TextEditingController());
                                    allTextFildList.add(getTextFild(
                                        i: allTextFildList.length,
                                        row: const Row()));
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.03),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                              for (var element in allControllers) {
                                Global.achievement.add(element.text.toString());
                              }
                              print(Global.achievement);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF139487),
                            ),
                            child: const Text(
                              "Save",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Row getTextFild({required i, required Row row}) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextField(
            controller: allControllers[i],
            decoration: InputDecoration(
              hintText: "Exceeded Sales 17% average",
              hintStyle: TextStyle(
                color: Colors.grey.withOpacity(0.5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            setState(() {
              allControllers.removeAt(i);
              allTextFildList.remove(row);
            });
          },
        ),
      ],
    );
  }
}
