import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
        top: 50,
        end: 16,
        start: 16,
      ),
      child: const Column(
        children: [
          CustomTextField(
            textFieldSize: 20, hintText: 'title',
          ),
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            textFieldSize: 60, hintText: 'content',
          ),
        ],
      ),
    );
  }
}
