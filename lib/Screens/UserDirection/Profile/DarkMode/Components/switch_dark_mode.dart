import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SwitchDarkMode extends StatefulWidget {
  final void Function(bool) onToggleTheme;

  const SwitchDarkMode({super.key, required this.onToggleTheme});

  @override
  State<SwitchDarkMode> createState() => _SwitchDarkModeState();
}

class _SwitchDarkModeState extends State<SwitchDarkMode> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      delay: const Duration(milliseconds: 800),
      duration: const Duration(milliseconds: 900),
      child: Switch.adaptive(
        activeColor: Colors.black,
        value: _lights,
        onChanged: (bool value) {
          setState(() {
            _lights = value;
          });
          widget.onToggleTheme(value);
        },
      ),
    );
  }
}
