import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class DateOfBirthForm extends StatefulWidget {
  const DateOfBirthForm({super.key});

  @override
  State<DateOfBirthForm> createState() => _DateOfBirthFormState();
}

class _DateOfBirthFormState extends State<DateOfBirthForm> {
  final TextEditingController _dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FadeInDown(
          delay: const Duration(milliseconds: 600),
          duration: const Duration(milliseconds: 700),
          child: const Text(
            "Date of Birth",
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
        FadeInUp(
          delay: const Duration(milliseconds: 600),
          duration: const Duration(milliseconds: 700),
          child: Container(
            padding: const EdgeInsets.all(3.0),
            height: 60,
            width: 310,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF139487)),
              borderRadius: const BorderRadius.all(Radius.circular(25)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _dataController,
                decoration: InputDecoration(
                  fillColor: const Color(0xFF139487).withOpacity(0.5),
                  labelText: 'Date of Birth',
                  labelStyle: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                  ),
                  prefixIcon: const Icon(Icons.calendar_today),
                  enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xFF139487).withOpacity(0.0),
                    ),
                  ),
                ),
                readOnly: true,
                onTap: () {
                  _selectData();
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _selectData() async {
    DateTime? picked = await showDatePicker(
      initialDate: DateTime.now(),
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dataController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
