import 'package:flutter/material.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/all_expensess_and_quick_invoice_section_company.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/company_info.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/profile_strength_section_company.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/job_details_section.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/type_of_job_section.dart';

class DashBoardMobileLayoutCompany extends StatelessWidget {
  const DashBoardMobileLayoutCompany({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          AllExpensessAndQuickInvoiceSectionCompany(),
          JobDetails(),
          SizedBox(
            height: 16,
          ),
          IncomeSection(),
          SizedBox(
            height: 16,
          ),
          CompanyInfo(),
          SizedBox(
            height: 16,
          ),
          ProfileStrengthSectionCompany(),
        ],
      ),
    );
  }
}
