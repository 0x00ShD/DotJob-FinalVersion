import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class GenderForm extends StatefulWidget {
  const GenderForm({super.key});

  @override
  State<GenderForm> createState() => _GenderFormState();
}

class _GenderFormState extends State<GenderForm> {
  String? dropDownValue;
  List<String> genderList = [
    'Male',
    'Female',
  ];

  @override
  void initState() {
    //setFilters();
    super.initState();
  }

  setFilters() {
    setState(() {
      dropDownValue = genderList[2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FadeInDown(
          delay: const Duration(milliseconds: 600),
          duration: const Duration(milliseconds: 700),
          child: const Text(
            "Gender",
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w400,
                color: Colors.black87),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        FadeInDown(
          delay: const Duration(milliseconds: 600),
          duration: const Duration(milliseconds: 700),
          child: DropdownButtonFormField(
            hint: const Text(
              "Gender",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w400,
                  color: Colors.black87),
            ),
            decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                hoverColor: Color(0xFF139487),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Color(0xFF139487)),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
            value: dropDownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropDownValue = newValue!;
              });
            },
            items: genderList
                .map((cityTitle) =>
                    DropdownMenuItem(value: cityTitle, child: Text(cityTitle)))
                .toList(),
          ),
        ),
      ],
    );
  }
}
