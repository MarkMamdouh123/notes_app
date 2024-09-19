import 'package:flutter/material.dart';
import 'package:flutter/material.dart.';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.07),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            size: 30,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
