import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.maxLines = 1, required this.hintText});
  final int maxLines;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        hintText: hintText,
        
       
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
