import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(
          0.05,
        ),
        borderRadius: BorderRadius.circular(
          18,
        ),
      ),
      child: Icon(
       icon,
        size: 28,
      ),
    );
  }
}
