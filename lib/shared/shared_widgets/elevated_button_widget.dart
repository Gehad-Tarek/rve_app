import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.text,
    required this.cBorder,
    required this.cButton,
    required this.cText,
    required this.alignment,
    required this.borderRadius,
  });

  final void Function()? onPressed;
  final double? width;
  final double? height;
  final String? text;
  final Color? cBorder;
  final Color? cButton;
  final Color? cText;
  final AlignmentGeometry? alignment;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        // onPressed: () {
        //   Navigator.pushNamed(context, IntroScreen.routeName);
        // },
        onPressed: onPressed!,
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: cBorder!,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius!
          ),
          backgroundColor: cButton!,
          //  fixedSize: Size(width * 0.8, height * 0.06),
          fixedSize: Size(width!, height!),
        ),
        child: Align(
          alignment: alignment!,
          child: Text(
            text!,
            style: TextStyle(
              color: cText!,
              fontSize: 20,
            ),
          ),
        ));
  }
}
