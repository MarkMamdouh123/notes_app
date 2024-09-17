import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNoteView(),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orange,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, right: 2, bottom: 16),
              child: ListTile(
                title: Text(
                  'Flutter Tips',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Build your career with mark',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontSize: 24,
                    ),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        size: 34,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 19.0,
                bottom: 20,
              ),
              child: Text(
                'May,20,2021',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
