import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.onTap});
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
