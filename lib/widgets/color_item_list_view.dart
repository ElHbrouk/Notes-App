import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key,});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Colors.black,
    Colors.amber,
    Colors.green,
    Colors.grey,
    Colors.blueGrey,
    Colors.red,
    Colors.brown,
    Colors.teal,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: colors.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: GestureDetector(
          onTap: () {
            currentIndex = index;
            setState(() {});
          },
          child: ColorItem(
            isActive: currentIndex == index,
            color: colors[index],
          ),
        ),
      ),
    );
  }
}
