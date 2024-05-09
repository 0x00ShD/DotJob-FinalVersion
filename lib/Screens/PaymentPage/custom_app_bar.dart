import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/Screens/PaymentPage/styles.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    leading: Center(
      child: SvgPicture.asset(
        'assets/Images/Arrow 1.svg',
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
