import 'package:flutter/material.dart';
import 'package:untitled1/Screens/PaymentPage/custom_button.dart';
import 'package:untitled1/Screens/PaymentPage/payment_methods_list_view.dart';

class PaymentMethodBotttomSheet extends StatelessWidget {
  const PaymentMethodBotttomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 32,
          ),
          CustomButton(text: 'Continue'),
        ],
      ),
    );
  }
}
