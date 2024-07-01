import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMothodsItems = const [
    'assets/Images/paypal.svg',
    'assets/icons/google-pay-2.svg',
    'assets/icons/2iZjgjXqM39bNeL6aRi8USG40ge.svg',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: SvgPicture.asset('assets/Images/paypal.svg')),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: SvgPicture.asset('assets/icons/google-pay-2.svg')),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: SvgPicture.asset(
                    'assets/icons/2iZjgjXqM39bNeL6aRi8USG40ge.svg')),
          ),
        ],
      ),
    );
  }
}
