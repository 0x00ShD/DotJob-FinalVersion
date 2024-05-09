import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/OnboradingView/onboardingview.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      // Replace 3 with your desired duration
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 200,
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      animationDuration: const Duration(seconds: 2),
      duration: 3000,
      splash: Image.asset('assets/Images/Logo.png'),
      nextScreen: const OnboardingView(),
    );
  }
}
