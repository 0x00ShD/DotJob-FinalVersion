import 'package:flutter/material.dart';

class BasicPlan extends StatelessWidget {
  const BasicPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color:const Color(0xFF139487)),
                width: 300,
                height: 410,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Free",style: TextStyle(color: Colors.white,fontSize: 60,fontFamily: 'Arimo'),),
                      const SizedBox(height: 10),
                      const Text("Free plan for all campanies.",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: 'Arimo'),),
                      const SizedBox(height: 20),
                      MaterialButton(
                              minWidth:20,
                              height: 60,
                              onPressed: () {
                              },
                              color: Colors.black,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Text(
                                "Get Started",
                                style: TextStyle(
                                  fontFamily: "Arimo",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Color(0xFF139487),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset('assets/icons/checked.png',width: 30,height: 30,),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(" Access to limited number",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
                                    SizedBox(height: 5),
                                    Text(" number of CVs per month(e.g.,50 CVs).",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
                                  ],
                                ),    
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset('assets/icons/checked.png',width: 30,height: 30,),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(" Basic search filters",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
                                    SizedBox(height: 5),
                                    Text(" (location, job title, experience level).",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
                                  ],
                                ),    
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset('assets/icons/checked.png',width: 30,height: 30,),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(" Ability to save and organize CVs.",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
                                  ],
                                ),    
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset('assets/icons/checked.png',width: 30,height: 30,),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(" Email notifications for new CV matches.",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),), 
                                  ],
                                ),    
                              ],
                            ),
                            

                    ],

                  ),
                ),
              ),
            );
  }
}