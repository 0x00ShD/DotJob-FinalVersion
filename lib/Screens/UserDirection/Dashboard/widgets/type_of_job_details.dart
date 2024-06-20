import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/models/item_details_model.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(color: Color(0xFF208BC7), title: 'Design ', value: '%40'),
    ItemDetailsModel(
        color: Color(0xFF4DB7F2), title: 'Programming', value: '%25'),
    ItemDetailsModel(color: Color(0xFF064060), title: 'Videos', value: '%20'),
    ItemDetailsModel(color: Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
  }
}
