import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/user_info_design.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserInfoDesign(),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
