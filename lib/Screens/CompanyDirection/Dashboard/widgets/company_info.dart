import 'package:flutter/material.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/company_info_design.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CompanyInfoDesign(),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
