import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard(
      {super.key, required this.formkey, required this.autovalidatemode});

  final GlobalKey<FormState> formkey;
  final AutovalidateMode autovalidatemode;

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          autovalidateMode: widget.autovalidatemode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (carditCardModel) {
            cardNumber = carditCardModel.cardNumber;
            expiryDate = carditCardModel.expiryDate;
            cardHolderName = carditCardModel.cardHolderName;
            cvvCode = carditCardModel.cvvCode;
            showBackView = carditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formkey,
        ),
      ],
    );
  }
}
