import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/models/item_details_model.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/item_details.dart';

class ProfileStrengthDetails extends StatelessWidget {
  const ProfileStrengthDetails({super.key});

  static const items = [
    ItemDetailsModel(
        color: Color(0xFF010100), title: 'CV Answered ', value: '%60'),
    ItemDetailsModel(
        color: Color(0xFFFDB750), title: 'Interviewed', value: '%25'),
    ItemDetailsModel(color: Color(0xFFFC2E20), title: 'Hired', value: '%15'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
  }
}
