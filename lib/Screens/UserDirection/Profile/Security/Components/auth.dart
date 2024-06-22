import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Profile/Notification/components/left_side.dart';

class GoogleAuth extends StatelessWidget {
  const GoogleAuth({
    Key? key,
    this.press,
  }) : super(key: key);

  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.white,
        ),
        onPressed: press,
        child: Row(
          children: [
            const Expanded(
              child: LeftSide(
                label: 'Google Authentication',
              ),
            ),
            FadeInRight(
                delay: const Duration(milliseconds: 800),
                duration: const Duration(milliseconds: 900),
                child: const Icon(Icons.arrow_forward_ios)),
          ],
        ),
      ),
    );
  }
}
