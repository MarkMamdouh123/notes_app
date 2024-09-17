import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_item.dart';

import 'note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  var noteItem = List.generate(
    10,
    (index) => NotesItem(),
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 50),
      child: Column(
        children: [
          CustomAppBar(
            text: "Notes",
            icon: Icons.search,
          ),
          NoteListView(noteItem: noteItem),
        ],
      ),
    );
  }
}
