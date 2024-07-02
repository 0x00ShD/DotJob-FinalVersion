import 'package:animate_do/animate_do.dart';
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
    const AllExpensessItemModel(
        title: 'Total Companies Redisted', number: r'500', type: 'Company'),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      delay: const Duration(milliseconds: 800),
      duration: const Duration(milliseconds: 900),
      child: Column(
        children: [
          Row(
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
                width: 20,
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
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          FadeInRight(
            delay: const Duration(milliseconds: 800),
            duration: const Duration(milliseconds: 900),
            child: Row(
              children: [
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
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateIndex(3);
                    },
                    child: AllExpensessItem(
                      isSelected: selectedIndex == 3,
                      itemModel: items[3],
                    ),
                  ),
                ),
              ],
            ),
          ),
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
