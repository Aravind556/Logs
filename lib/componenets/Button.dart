import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  String text;
  VoidCallback onPressed;

  Button({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[400],
        foregroundColor: Colors.black,
      ),
      onPressed: onPressed,
      child:Text(text),
    );
  }
}
