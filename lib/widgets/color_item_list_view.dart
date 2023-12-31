import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
    required this.themeData,
  });
  final Brightness themeData;
  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNotesCubit>(context).color = kColors[index];
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: kColors[index],
              themeData: widget.themeData,
            ),
          ),
        ),
      ),
    );
  }
}
