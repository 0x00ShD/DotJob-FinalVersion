import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:untitled1/Screens/PaymentPage/custom_button.dart';
import 'package:untitled1/Screens/PaymentPage/custom_credit_card.dart';
import 'package:untitled1/Screens/PaymentPage/payment_methods_list_view.dart';
import 'package:untitled1/Screens/PaymentPage/thank_you_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidatemode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PaymentMethodsListView(),
        CustomCreditCard(
          formkey: formkey,
          autovalidatemode: autovalidatemode,
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
            child: CustomButton(
              text: 'Pay Now',
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                  log('payment');
                } else {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ThankYouView();
                  }));
                  setState(() {
                    autovalidatemode = AutovalidateMode.always;
                  });
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
