import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/note_model.dart';
import 'colors_list_view.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorsListView> createState() => _EditColorsListViewState();
}

class _EditColorsListViewState extends State<EditColorsListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(
      Color(widget.note.color),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
                widget.note.color = kColors[index].value;
              });
            },
            child: ColorsItem(
              isActive: currentIndex == index ? true : false,
              color: kColors[index],
            ),
          );
        },
      ),
    );
  }
}
