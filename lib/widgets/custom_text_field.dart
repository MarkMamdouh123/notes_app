import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.maxLines = 1,
    required this.hintText,
    this.onSaved,
    this.onChanged,
  });
  int? maxLines;
  final String hintText;
  void Function(String?)? onSaved;
  void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "Field is required";
          } else {
            return null;
          }
        },
        maxLines: maxLines,
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          errorBorder: buildOutlineInputBorder(),
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
