import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:untitled1/Screens/CompanyDirection/PaymentPage/custom_button.dart';
import 'package:untitled1/Screens/CompanyDirection/PaymentPage/custom_credit_card.dart';
import 'package:untitled1/Screens/CompanyDirection/PaymentPage/payment_methods_list_view.dart';
import 'package:untitled1/Screens/CompanyDirection/PaymentPage/thank_you_view.dart';

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
        FadeInLeft(delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),child: const PaymentMethodsListView()),
        FadeInRight(
          delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
          child: CustomCreditCard(
            formkey: formkey,
            autovalidatemode: autovalidatemode,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        FadeInLeft(
          delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 900),
          child: Align(
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
        ),
      ],
    );
  }
}


