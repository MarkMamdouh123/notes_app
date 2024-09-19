import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'notes_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNoteCubit, ReadNoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<ReadNoteCubit>(context).notes!;

        return Expanded(
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                child: NotesItem(
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
