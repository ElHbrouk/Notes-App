import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.themeData});
  final Brightness themeData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomAppBar(
                themeData: themeData, icon: Icons.check, title: 'Edit Note', themeButton: false,
              ),
              const SizedBox(
                height: 50,
              ),
              CustomTextField(
                hintText: 'title',
                themeData: themeData,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                maxLines: 5,
                hintText: 'content',
                themeData: themeData,
              )
            ],
          ),
        ),
      ),
    );
  }
}
