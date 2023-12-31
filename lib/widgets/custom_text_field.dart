import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxLines = 1,
     this.hintText,
    required this.themeData,
    this.onSaved, this.onChanged, this.controller,
  });
  final int maxLines;
  final String? hintText;
  final Brightness themeData;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      style: TextStyle(
        color: themeData == Brightness.dark ? Colors.white : Colors.black,
      ),
      maxLines: maxLines,
      cursorColor: themeData == Brightness.light ? Colors.black : kPrimaryColor,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: themeData == Brightness.light ? Colors.black : kPrimaryColor,
        ),
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: themeData == Brightness.light ? Colors.black : kPrimaryColor,
      ),
      borderRadius: BorderRadius.circular(
        16,
      ),
    );
  }
}
