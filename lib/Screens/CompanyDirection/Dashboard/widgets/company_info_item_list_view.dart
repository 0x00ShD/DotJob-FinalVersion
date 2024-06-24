import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/models/all_expensess_item_model.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/all_expenssess_item.dart';

class CompanyInfoItemsListView extends StatefulWidget {
  const CompanyInfoItemsListView({super.key});

  @override
  State<CompanyInfoItemsListView> createState() =>
      _CompanyInfoItemsListViewState();
}

class _CompanyInfoItemsListViewState extends State<CompanyInfoItemsListView> {
  final items = [
    const AllExpensessItemModel(
        title: 'No. of CV watched', number: r'120', type: 'times'),
    const AllExpensessItemModel(
        title: 'No. of acception', number: r'50', type: 'times'),
    const AllExpensessItemModel(
        title: 'No. of rejection', number: r'70', type: 'times'),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                updateIndex(0);
              },
              child: AllExpensessItem(
                isSelected: selectedIndex == 0,
                itemModel: items[0],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                updateIndex(1);
              },
              child: AllExpensessItem(
                isSelected: selectedIndex == 1,
                itemModel: items[1],
              ),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            updateIndex(2);
          },
          child: AllExpensessItem(
            isSelected: selectedIndex == 2,
            itemModel: items[2],
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
