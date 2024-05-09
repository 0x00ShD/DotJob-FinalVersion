import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xFFEDEDED),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Color(0xFF34A853),
        child: Icon(Icons.check, color: Colors.white, size: 60),
      ),
    );
  }
}
