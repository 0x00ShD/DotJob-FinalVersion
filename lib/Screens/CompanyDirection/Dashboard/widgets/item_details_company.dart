import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/models/item_details_model.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/utils/app_styles.dart';

class ItemDetailsCompany extends StatelessWidget {
  const ItemDetailsCompany({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 16),
    //   child: FittedBox(
    //     fit: BoxFit.scaleDown,
    //     child: Row(
    //       children: [
    //         Container(
    //           width: 12,
    //           height: 12,
    //           decoration: ShapeDecoration(
    //             color: itemDetailsModel.color,
    //             shape: const OvalBorder(),
    //           ),
    //         ),
    //         const SizedBox(
    //           width: 12,
    //         ),
    //         Text(
    //           itemDetailsModel.title,
    //           style: AppStyles.styleRegular16,
    //         ),
    //         const SizedBox(
    //           width: 24,
    //         ),
    //         Text(
    //           itemDetailsModel.value,
    //           style: AppStyles.styleMedium16,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
