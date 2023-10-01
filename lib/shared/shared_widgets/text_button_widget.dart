import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.decoration,
      required this.colorText,
      });
  final void Function()? onPressed;
  // final double width;
  // final double height;
  final String? text;
  final TextDecoration? decoration;
  final Color? colorText;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      
      child: Text(
        text!,
        style: TextStyle(//fontSize: 16
            color: colorText, fontSize: 18,fontWeight: FontWeight.bold ,decoration: decoration),
      ),
    );
  }
}
