import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/change_theme/change_theme_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.themeData});
  final ThemeData themeData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
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
      ]),
      body: const Column(
        children: [
          
        ],
      ),
    );
  }
}
