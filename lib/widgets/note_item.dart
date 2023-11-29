import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(
        vertical: 20,
      ),
      margin: const EdgeInsetsDirectional.only(
        top: 15.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
            ),
            subtitle: const Padding(
              padding: EdgeInsetsDirectional.only(top: 16.0, bottom: 22.0),
              child: Text(
                'build your career with thrwat samy',
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
              'May 21, 2024',
              style: TextStyle(
                color: Colors.black.withOpacity(
                  0.6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
