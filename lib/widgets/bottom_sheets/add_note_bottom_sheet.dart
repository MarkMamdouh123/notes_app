import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 18.0,
          right: 18,
          top: 30,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
