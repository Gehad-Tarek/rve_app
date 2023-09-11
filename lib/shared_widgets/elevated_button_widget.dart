import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key,required this.onPressed,required this.height,required this.width,required this.text});
final void Function()? onPressed;
final double width;
final double height;
final String text;
  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(
                  // onPressed: () {
                  //   Navigator.pushNamed(context, IntroScreen.routeName);
                  // },
                  onPressed:onPressed ,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    backgroundColor: Constants.kBlueColor,
                  //  fixedSize: Size(width * 0.8, height * 0.06),
                  fixedSize: Size(width,height),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Constants.kWhiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ));
  }
}