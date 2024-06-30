import 'package:flutter/material.dart';
import 'package:untitled1/Screens/CompanyDirection/PlanPage/payment_methods_bottom_sheet.dart';

class StandardPlan extends StatelessWidget {
  const StandardPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color:const Color(0xFF139487)),
                width: 300,
                height: 470,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text("\$ 49.99",style: TextStyle(color: Colors.white,fontSize: 55,fontFamily: 'Arimo'),),
                          Text("/",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Arimo'),),
                          Text("month",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Arimo'),),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text("Free plan for Small campanies.",style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: 'Arimo'),),
                      const SizedBox(height: 20),
                      MaterialButton(
                              minWidth:20,
                              height: 60,
                              onPressed: () {
                                showModalBottomSheet(context: context, builder: (context)
                                {
                                  return const PaymentMethodsBottomSheet();
                                });
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
                                    Text(" Access to a larger number",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
                                    SizedBox(height: 5),
                                    Text(" of CVs per month (e.g., 200 CVs).",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
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
                                    Text(" Advanced search filters",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
                                    SizedBox(height: 5),
                                    Text(" (industry, skills, education).",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
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
                                    Text(" Enhanced CV organization tools",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
                                    SizedBox(height: 5),
                                    Text(" (folders, tags).",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
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
                                    Text(" Email and in-app notifications",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),), 
                                    SizedBox(height: 5),
                                    Text(" for new CV matches.",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
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
                                    Text(" Basic analytics (number of views,",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),), 
                                    SizedBox(height: 5),
                                    Text(" application status tracking).",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Arimo'),),
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