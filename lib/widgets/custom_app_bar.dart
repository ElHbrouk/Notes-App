import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/change_theme/change_theme_cubit.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.themeData});
  final Brightness themeData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color:
                themeData == Brightness.light ? Colors.black : Colors.white,
          ),
        ),
        const CustomSearchIcon(),
      ],
    );
  }
}
