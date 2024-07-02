import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/Screens/CompanyDirection/PaymentPage/payment_details.dart';

class PremiumPlan extends StatelessWidget {
  const PremiumPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color(0xFF139487)),
        width: 300,
        height: 580,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    "\$ 99.99",
                    style: TextStyle(
                        color: Colors.white, fontSize: 55, fontFamily: 'Arimo'),
                  ),
                  Text(
                    "/",
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: 'Arimo'),
                  ),
                  Text(
                    "month",
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: 'Arimo'),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Free plan for enterprise campanies.",
                style: TextStyle(
                    color: Colors.white, fontSize: 15, fontFamily: 'Arimo'),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                minWidth: 20,
                height: 60,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sizer(
                        builder: (context, orientation, deviceType) =>
                            const PaymentDetailsView(),
                      ),
                    ),
                  );
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
                  Image.asset(
                    'assets/icons/checked.png',
                    width: 30,
                    height: 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Unlimited access to CVs",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/checked.png',
                    width: 30,
                    height: 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Comprehensive search filters",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        " (all available filters).",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/checked.png',
                    width: 30,
                    height: 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Advanced CV management",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        " (collaboration tools, detailed notes).",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/checked.png',
                    width: 30,
                    height: 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Email, in-app, and SMS notifications",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        " for new CV matches.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/checked.png',
                    width: 30,
                    height: 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Advanced analytics and reporting",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        " (detailed insights on candidate",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        " engagement, performance tracking).",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/checked.png',
                    width: 30,
                    height: 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Priority customer support",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/checked.png',
                    width: 30,
                    height: 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Option to feature job postings to",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        " attract top talent.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arimo'),
                      ),
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
