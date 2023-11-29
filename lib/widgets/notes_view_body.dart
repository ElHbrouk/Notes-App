import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key, required this.themeData});
  final ThemeData themeData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24.0),
      child: Column(
            children: [
      CustomAppBar(
        themeData: themeData,
      ),
            ],
          ),
    );
  }
}
