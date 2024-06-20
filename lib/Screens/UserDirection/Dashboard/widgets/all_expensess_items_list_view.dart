import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/models/all_expensess_item_model.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/all_expenssess_item.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  final items = [
    const AllExpensessItemModel(
        title: 'Total Users Registed', number: r'100.000', type: 'Users'),
    const AllExpensessItemModel(
        title: 'No. of Meetings', number: r'75.000', type: 'Users'),
    const AllExpensessItemModel(
        title: 'No. of hirings', number: r'25.000', type: 'Users'),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
