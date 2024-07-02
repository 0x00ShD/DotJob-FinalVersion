import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/Screens/CompanyDirection/PlanPage/API_keys/api_key.dart';
import 'package:untitled1/Screens/CompanyDirection/PlanPage/PaymobManager/paymob_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class PaymentMethodsListViewStandard extends StatefulWidget {
  const PaymentMethodsListViewStandard({super.key});

  @override
  State<PaymentMethodsListViewStandard> createState() =>
      _PaymentMethodsListViewStandardState();
}

class _PaymentMethodsListViewStandardState
    extends State<PaymentMethodsListViewStandard> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => PaypalCheckoutView(
                      sandboxMode: true,
                      clientId: ApiKeys.clientID,
                      secretKey: ApiKeys.paypalSecretKey,
                      transactions: const [
                        {
                          "amount": {
                            "total": '49.99',
                            "currency": "USD",
                            "details": {
                              "subtotal": '49.99',
                              "shipping": '0',
                              "shipping_discount": 0
                            }
                          },
                          "description": "The payment transaction description.",
                          "item_list": {
                            "items": [
                              {
                                "name": "Standard",
                                "quantity": 1,
                                "price": '49.99',
                                "currency": "USD"
                              },
                            ],
                          }
                        }
                      ],
                      note: "Contact us for any questions on your order.",
                      onSuccess: (Map params) async {
                        log("onSuccess: $params");
                        Navigator.pop(context);
                      },
                      onError: (error) {
                        log("onError: $error");
                        Navigator.pop(context);
                      },
                      onCancel: () {
                        print('cancelled:');
                        Navigator.pop(context);
                      },
                    ),
                  ));
                },
                child: SvgPicture.asset('assets/Images/paypal.svg')),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () async => _pay(),
                child: SvgPicture.asset(
                    'assets/icons/2iZjgjXqM39bNeL6aRi8USG40ge.svg')),
          ),
        ],
      ),
    );
  }

  Future<void> _pay() async {
    PaymobManager().getPaymentKey(4835, "EGP").then((String paymentKey) {
      launchUrl(
        Uri.parse(
            "https://accept.paymob.com/api/acceptance/iframes/854235?payment_token=$paymentKey"),
      );
    });
  }
}
