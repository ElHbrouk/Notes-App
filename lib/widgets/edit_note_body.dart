import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.themeData,
    required this.noteModel,
  });

  final Brightness themeData;
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomAppBar(
              onTap: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.content = content ?? widget.noteModel.content;
                widget.noteModel.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              themeData: widget.themeData,
              icon: Icons.check,
              title: 'Edit Note',
              themeButton: false,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.noteModel.title,
              themeData: widget.themeData,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              onChanged: (value) {
                content = value;
              },
              maxLines: 5,
              hintText: widget.noteModel.content,
              themeData: widget.themeData,
            )
          ],
        ),
      ),
    );
  }
}
