import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';

class MenuScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.kMaintBlueColor,
      child: Center(
          child: Text("Menu Screen",
              style: TextStyle(color: Constants.kBlackColor))),
    );
  }
}
