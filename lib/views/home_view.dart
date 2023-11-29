import 'package:flutter/material.dart';
import 'package:notes_app/theme/constants.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.themeData});
  final Brightness themeData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(
        backgroundColor:kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
              // isScrollControlled: true,
              context: context,
              builder: (context) {
                return  AddNoteButtomSheet(themeData: themeData,);
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: NotesViewBody(themeData: themeData),
      ),
    );
  }
}

