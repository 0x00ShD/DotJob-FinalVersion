import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/models/all_expensess_item_model.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/all_expenssess_item.dart';

class UserInfoItemsListView extends StatefulWidget {
  const UserInfoItemsListView({super.key});

  @override
  State<UserInfoItemsListView> createState() => _UserInfoItemsListViewState();
}

class _UserInfoItemsListViewState extends State<UserInfoItemsListView> {
  final items = [
    const AllExpensessItemModel(
        title: 'No. of CV watched', number: r'10', type: 'times'),
    const AllExpensessItemModel(
        title: 'No. of acception', number: r'6', type: 'times'),
    const AllExpensessItemModel(
        title: 'No. of rejection', number: r'4', type: 'times'),
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
            const SizedBox(
              width: 8,
            ),
            GestureDetector(
              onTap: () {
                updateIndex(1);
              },
              child: AllExpensessItem(
                isSelected: selectedIndex == 1,
                itemModel: items[1],
              ),
            ),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
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
