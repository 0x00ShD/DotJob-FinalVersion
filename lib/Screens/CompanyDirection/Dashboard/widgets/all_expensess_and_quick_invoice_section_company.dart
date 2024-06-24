import 'package:flutter/material.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/all_expensess_company.dart';

class AllExpensessAndQuickInvoiceSectionCompany extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSectionCompany({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesCompany(),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
