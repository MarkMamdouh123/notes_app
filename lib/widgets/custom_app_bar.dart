import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {super.key,
      required this.text,
      required this.icon,
      required this.onPressed});
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$text',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        Spacer(),
        CustomIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
