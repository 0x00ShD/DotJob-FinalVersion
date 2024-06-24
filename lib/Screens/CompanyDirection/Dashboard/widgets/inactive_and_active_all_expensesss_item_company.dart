import 'package:flutter/material.dart';

import 'package:untitled1/Screens/UserDirection/Dashboard/models/all_expensess_item_model.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/utils/app_styles.dart';

class InActiveAllExpensessItemCompany extends StatelessWidget {
  const InActiveAllExpensessItemCompany({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.title,
              style: AppStyles.styleMedium16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.number,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.type,
              style: TextStyle(
                color: const Color(0xFF139487),
                fontSize: getResponsiveFontSize(context, fontSize: 16),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: ShapeDecoration(
        color: const Color(0xFF139487),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
              width: 1, color: Color.fromARGB(255, 118, 221, 211)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 35,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16(context).copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.number,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.type,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
