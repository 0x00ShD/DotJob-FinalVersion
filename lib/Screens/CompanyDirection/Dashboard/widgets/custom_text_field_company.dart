import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/utils/app_styles.dart';

class CustomTextFieldCompany extends StatelessWidget {
  const CustomTextFieldCompany({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFFAFAFA),
      ),
    );
  }
}
