import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled1/Screens/OnboradingView/onboardview_item.dart';
import 'package:untitled1/Screens/user_company_choose.dart';
import 'package:sizer/sizer.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final controller = OnboardingItems();
  final pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Container(
          decoration: BoxDecoration(
              color: const Color(0xFF139487),
              borderRadius: BorderRadius.circular(15)),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: isLastPage
              ? getStarted()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => pageController
                          .jumpToPage(controller.items.length - 1),
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SmoothPageIndicator(
                        controller: pageController,
                        count: controller.items.length,
                        onDotClicked: (index) => pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeIn),
                        effect: const WormEffect(
                            dotHeight: 12,
                            dotWidth: 12,
                            activeDotColor: Colors.white)),
                    TextButton(
                      onPressed: () => pageController.nextPage(
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn),
                      child: const Text(
                        'Next',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: PageView.builder(
              onPageChanged: (index) => setState(
                  () => isLastPage = controller.items.length - 1 == index),
              itemCount: controller.items.length,
              controller: pageController,
              itemBuilder: ((context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      controller.items[index].image,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(controller.items[index].title,
                        style: const TextStyle(
                            fontFamily: 'Arimo',
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      controller.items[index].description,
                      style: const TextStyle(
                          fontFamily: 'Voltaire',
                          color: Colors.grey,
                          fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              })),
        ));
  }

  Widget getStarted() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF139487)),
      width: MediaQuery.of(context).size.width * .9,
      height: 55,
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Sizer(
                builder: (context, orientation, deviceType) =>
                    const UserCompanyChoose(),
              ),
            ),
          );
        },
        child: const Text("Get Started",
            style: TextStyle(fontSize: 17, color: Colors.white)),
      ),
    );
  }
}
