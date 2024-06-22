import 'package:flutter/material.dart';

Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            fontSize: 15,
            fontFamily: 'Satoshi',
            fontWeight: FontWeight.w400,
            color: Colors.black87),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: const InputDecoration(
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            hoverColor: Color(0xFF139487),
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Color(0xFF139487)),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black))),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
