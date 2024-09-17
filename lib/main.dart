import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NotesView.routeName,
      routes: {
        NotesView.routeName: (context) => NotesView(),
      },
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
