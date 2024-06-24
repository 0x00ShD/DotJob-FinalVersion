import 'package:flutter/material.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/all_expensess_header_company.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/all_expensess_items_list_view_company.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/custom_background_container.dart';

class AllExpensesCompany extends StatelessWidget {
  const AllExpensesCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensessHeaderCompany(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemsListViewCompany(),
        ],
      ),
    );
  }
}
