import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(
          32.0,
        ),
      ),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
