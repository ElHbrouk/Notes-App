import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
    required this.themeData,
  });

  final Brightness themeData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          CustomAppBar(
            themeData: themeData, icon: Icons.search, title: 'Notes', themeButton: true,
          ),
           Expanded(child: NoteListView(themeDate: themeData,)),
        ],
      ),
    );
  }
}
