import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
        ],
      ),
    );
  }
}
