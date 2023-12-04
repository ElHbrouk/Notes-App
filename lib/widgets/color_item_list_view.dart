import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key, required this.themeData,
  });
  final Brightness themeData;
  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Colors.purple,
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
            BlocProvider.of<AddNotesCubit>(context).color = colors[index];
            setState(() {});
          },
          child: ColorItem(
            isActive: currentIndex == index,
            color: colors[index], themeData: widget.themeData,
          ),
        ),
      ),
    );
  }
}
