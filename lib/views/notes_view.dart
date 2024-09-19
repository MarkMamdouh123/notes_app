import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';

import '../widgets/bottom_sheets/add_note_bottom_sheet.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static const String routeName = "notesView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black,
        backgroundColor: Colors.greenAccent,
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.greenAccent),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
      ),
      body: NotesViewBody(),
    );
  }
}
