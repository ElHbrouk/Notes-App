import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({
    super.key,
    required this.themeData,
  });
  final Brightness themeData;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
        top: 50,
        end: 16,
        start: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hintText: 'title',
              themeData: themeData,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              maxLines: 5,
              hintText: 'content',
              themeData: themeData,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
