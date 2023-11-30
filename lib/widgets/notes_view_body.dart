import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/change_theme/change_theme_cubit.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomAppBar(
                themeData: themeData,
              ),
             
              IconButton(
          onPressed: () {
            context.read<ChangeThemeCubit>().toggleTheme();
          },
          icon: Icon(
            themeData == Brightness.light
                ? Icons.light_mode_outlined
                : Icons.dark_mode_outlined,
          ),
        ),
            ],
          ),
           Expanded(child: NoteListView(themeDate: themeData,)),
        ],
      ),
    );
  }
}
