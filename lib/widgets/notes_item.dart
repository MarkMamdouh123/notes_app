import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNoteView(
              note: note,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, right: 2, bottom: 16),
              child: ListTile(
                title: Text(
                  '${note.title}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    '${note.subTitle}',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontSize: 24,
                    ),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
                    },
                    icon: Icon(
                      Icons.delete,
                      size: 34,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 19.0,
                bottom: 20,
              ),
              child: Text(
                '${note.date}',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
