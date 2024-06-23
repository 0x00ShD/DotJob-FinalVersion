import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled1/Screens/UserDirection/Profile/DarkMode/Components/provider.dart';

class ThemeSwitch extends ConsumerWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(themeMode == ThemeMode.light ? Icons.light_mode : Icons.dark_mode),
        Switch(
          value: themeMode == ThemeMode.dark,
          onChanged: (value) {
            ref
                .read(themeModeProvider.notifier)
                .update((state) => value ? ThemeMode.dark : ThemeMode.light);
          },
        )
      ],
    );
  }
}
