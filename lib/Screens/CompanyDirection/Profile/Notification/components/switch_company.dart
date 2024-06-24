import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SwitchForm extends StatefulWidget {
  const SwitchForm({super.key});

  @override
  State<SwitchForm> createState() => _SwitchFormState();
}

class _SwitchFormState extends State<SwitchForm> {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      delay: const Duration(milliseconds: 800),
      duration: const Duration(milliseconds: 900),
      child: Switch.adaptive(
        activeColor: const Color(0xFF139487),
        value: _lights,
        onChanged: (bool value) {
          setState(() {
            _lights = value;
          });
        },
      ),
    );
  }
}
