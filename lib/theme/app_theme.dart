import 'package:flutter/material.dart';

ThemeData appTheme(Brightness state, BuildContext context) {
  return ThemeData(
    brightness: state,
    listTileTheme: ListTileThemeData(
      iconColor: Colors.black,
      titleTextStyle: const TextStyle(
        fontSize: 28,
        color: Colors.black,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
      ),
      subtitleTextStyle: TextStyle(
        fontSize: 22,
        color: Colors.black.withOpacity(0.6),
      ),
    ),
    textTheme: Theme.of(context).textTheme.apply(
          // displayColor: Colors.white,
          fontSizeDelta: 8,
          fontFamily: 'Poppins',
          decorationColor: Colors.black,
          bodyColor: Colors.black,
        ),
  );
}
