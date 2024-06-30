import 'package:flutter/material.dart';
import 'package:untitled1/Screens/CompanyDirection/PaymentPage/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMothodsItems = const [
    'assets/Images/card.svg',
    'assets/Images/paypal.svg',
    'assets/icons/google-pay-2.svg', 
    'assets/icons/2iZjgjXqM39bNeL6aRi8USG40ge.svg',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: paymentMothodsItems.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: PaymentMethodItem(
                  image: paymentMothodsItems[index],
                  isActive: activeIndex == index,
                ),
              ),
            );
          })),
    );
  }
}
