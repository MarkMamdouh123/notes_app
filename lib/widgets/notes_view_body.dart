import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

import 'note_list_view.dart';

class NotesViewBody extends StatefulWidget {
  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 50),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {},
            text: "Notes",
            icon: Icons.search,
          ),
          NoteListView(),
        ],
      ),
    );
  }
}
