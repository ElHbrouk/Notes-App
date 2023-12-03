import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/note_edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.themeDate, required this.noteModel});
  final Brightness themeDate;
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (builder) => EditNoteView(
              themeData: themeDate,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsetsDirectional.symmetric(
          vertical: 20,
        ),
        margin: const EdgeInsetsDirectional.only(
          top: 15.0,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(noteModel.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(
                noteModel.title,
              ),
              subtitle:  Padding(
                padding:const EdgeInsetsDirectional.only(top: 16.0, bottom: 22.0),
                child: Text(
                  noteModel.content,
                ),
              ),
              trailing: IconButton(
                iconSize: 26,
                icon: const Icon(FontAwesomeIcons.trash),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                end: 20.0,
              ),
              child: Text(
                noteModel.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(
                    0.6,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
