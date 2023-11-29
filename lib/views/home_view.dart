import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_list_view.dart';
import 'package:notes_app/widgets/notes_view_body.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.themeData});
  final Brightness themeData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotesViewBody(themeData: themeData),
      ),
    );
  }
}

