import 'package:flutter/material.dart';

import 'notes_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
    required this.noteItem,
  });

  final List<NotesItem> noteItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: noteItem.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
            child: noteItem[index],
          );
        },
      ),
    );
  }
}
