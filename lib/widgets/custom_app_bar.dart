import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.themeData,
      required this.icon,
      required this.title});
  final Brightness themeData;
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: themeData == Brightness.light ? Colors.black : Colors.white,
          ),
        ),
        const SizedBox(
          width: 190,
        ),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
