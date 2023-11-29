import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.textFieldSize, required this.hintText});
  final double textFieldSize;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        hintText: hintText,
        contentPadding: EdgeInsetsDirectional.only(
          start: 20,
          top: textFieldSize,
          bottom: textFieldSize,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      
      borderSide:  BorderSide(
        color: color ??Colors.white,
      ),
      borderRadius: BorderRadius.circular(
        32,
      ),
    );
  }
}
