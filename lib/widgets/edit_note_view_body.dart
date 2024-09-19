import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

import '../constants.dart';
import '../models/note_model.dart';
import 'colors_list_view.dart';
import 'edit_color_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 50),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            text: 'Edit',
            icon: Icons.done,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (data) {
              title = data;
            },
            hintText: widget.note.title,
          ),
          CustomTextField(
            onChanged: (data) {
              content = data;
            },
            hintText: widget.note.subTitle,
            maxLines: 5,
          ),
          EditColorsListView(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
