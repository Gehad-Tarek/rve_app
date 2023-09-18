import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.widget});
  final Widget widget;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: width * 0.02),
        height: height * 0.065,
        width: width - width * 0.1,
        decoration: BoxDecoration(
          border: Border.all(color: Constants.kGreyColor.withOpacity(0.7)),
          color: Constants.kWhiteColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: widget);
  }
}
