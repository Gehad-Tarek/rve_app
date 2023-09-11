import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key,required this.onPressed,required this.text});
  final void Function()? onPressed;
  // final double width;
  // final double height;
  final String text;
  @override
  Widget build(BuildContext context) {
    return  TextButton(
            onPressed:onPressed,
            child: Text(
              text,
              style: TextStyle(color: Constants.kGreyColor, fontSize: 16),
            ),
);
}
}