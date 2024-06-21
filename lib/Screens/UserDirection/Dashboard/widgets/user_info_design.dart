import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/custom_background_container.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/user_info_header.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/user_info_item_list_view.dart';

class UserInfoDesign extends StatelessWidget {
  const UserInfoDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInRight(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: const UserInfoHeader()),
          const SizedBox(
            height: 16,
          ),
          FadeInLeft(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
              child: const UserInfoItemsListView()),
        ],
      ),
    );
  }
}
