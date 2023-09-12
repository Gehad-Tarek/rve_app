import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {super.key, required this.onPressed, required this.text,required this.decoration});
  final void Function()? onPressed;
  // final double width;
  // final double height;
  final String? text;
  final TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text!,
        style: TextStyle(
            color: Constants.kGreyColor,
            fontSize: 16,
            decoration: decoration),
      ),
    );
  }
}
