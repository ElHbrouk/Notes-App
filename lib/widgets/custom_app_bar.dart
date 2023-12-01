import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/change_theme/change_theme_cubit.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.themeData,
      required this.icon,
      required this.title, required this.themeButton});
  final Brightness themeData;
  final IconData icon;
  final String title;
  final bool themeButton;
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
        const Spacer(),
        themeButton == true? IconButton(
          onPressed: () {
            context.read<ChangeThemeCubit>().toggleTheme();
          },
          icon: Icon(
            themeData == Brightness.light
                ? Icons.light_mode_outlined
                : Icons.dark_mode_outlined,
          ),
        ):const SizedBox(),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
