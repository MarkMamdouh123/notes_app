import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.maxLines = 1,
    required this.hintText,
  });
  int? maxLines;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: TextFormField(
        maxLines: maxLines,
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
        ),
      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.circular(20),
  );
}
