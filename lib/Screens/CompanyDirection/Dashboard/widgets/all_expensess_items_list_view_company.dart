import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/models/all_expensess_item_model.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/all_expenssess_item.dart';

class AllExpensessItemsListViewCompany extends StatefulWidget {
  const AllExpensessItemsListViewCompany({super.key});

  @override
  State<AllExpensessItemsListViewCompany> createState() =>
      _AllExpensessItemsListViewCompanyState();
}

class _AllExpensessItemsListViewCompanyState
    extends State<AllExpensessItemsListViewCompany> {
  final items = [
    const AllExpensessItemModel(
        title: 'Total Companies Registed', number: r'500', type: 'company'),
    const AllExpensessItemModel(
        title: 'No. of Meetings', number: r'75.000', type: 'Users'),
    const AllExpensessItemModel(
        title: 'No. of hirings', number: r'25.000', type: 'Users'),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      delay: const Duration(milliseconds: 800),
      duration: const Duration(milliseconds: 900),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(0);
              },
              child: AllExpensessItem(
                isSelected: selectedIndex == 0,
                itemModel: items[0],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(1);
              },
              child: AllExpensessItem(
                isSelected: selectedIndex == 1,
                itemModel: items[1],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(2);
              },
              child: AllExpensessItem(
                isSelected: selectedIndex == 2,
                itemModel: items[2],
              ),
            ),
          )
        ],
      ),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
