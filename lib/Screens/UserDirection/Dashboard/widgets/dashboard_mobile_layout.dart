import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/profile_strength_section.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/type_of_job_section.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/user_info.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          IncomeSection(),
          SizedBox(
            height: 16,
          ),
          UserInfo(),
          SizedBox(
            height: 16,
          ),
          ProfileStrengthSection(),
        ],
      ),
    );
  }
}
