import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';

class WidgetHorizTabBar extends StatelessWidget {
  const WidgetHorizTabBar({
    super.key, required this.text, required this.width,
  });
// final int valueTabColor;
final String text;
final double width;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
   // final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.06,
      width: width ,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color:valueTabColor==3? Constants.kBlueColor:Constants.kWhiteColor,
       //color: Constants.kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        text,
        //style: TextStyle(color:valueTabColor==3? Constants.kWhiteColor:Constants.kDarkGreyColor),
        //style: TextStyle(color:Constants.kDarkGreyColor),
      ),
    );
  }
}
