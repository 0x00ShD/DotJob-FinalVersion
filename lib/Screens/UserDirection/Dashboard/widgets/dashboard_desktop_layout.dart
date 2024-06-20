import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/type_of_job_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensessAndQuickInvoiceSection(),
                        )),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Expanded(child: IncomeSection()),
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
