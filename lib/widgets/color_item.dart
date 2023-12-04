import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem(
      {super.key,
      required this.isActive,
      required this.color,
      required this.themeData});
  final bool isActive;
  final Color color;
  final Brightness themeData;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38, 
            backgroundColor:
                themeData == Brightness.dark ? Colors.white : Colors.black,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 34,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 38,
          );
  }
}
