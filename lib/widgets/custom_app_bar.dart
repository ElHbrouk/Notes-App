import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/change_theme/change_theme_cubit.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.themeData});
  final ThemeData themeData;
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        const Text(
          'Notes',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            context.read<ChangeThemeCubit>().toggleTheme();
          },
          icon: Icon(
            themeData == ThemeData.light()
                ? Icons.light_mode_outlined
                : Icons.dark_mode_outlined,
          ),
        ),
        const CustomSearchIcon(),
      ],
    );
  }
}
