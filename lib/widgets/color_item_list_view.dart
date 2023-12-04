import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => const ColorItem(),
    );
  }
}
