import 'package:flutter/material.dart';
import 'package:notes_app/theme/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxLines = 1,
    required this.hintText, required this.themeData,
  });
  final int maxLines;
  final String hintText;
  final Brightness themeData;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: themeData == Brightness.dark?Colors.white:Colors.black,  
      ),
      maxLines: maxLines,
      cursorColor: themeData == Brightness.light? Colors.black:kPrimaryColor,
      decoration: InputDecoration(
        
        hintStyle:  TextStyle(
          color: themeData == Brightness.light? Colors.black:kPrimaryColor,
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
        color: themeData == Brightness.light? Colors.black:kPrimaryColor,
      ),
      borderRadius: BorderRadius.circular(
        16,
      ),
    );
  }
}
