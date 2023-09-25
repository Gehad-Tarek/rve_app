import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../shared/shared_widgets/custom_app_bar_title.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          backgroundColor: Constants.kBlueColor,
          elevation: 10,
          title: CustomAppBarTitle(),
        ),
        body: Container(
          color: Constants.kMaintBlueColor,
          child: Center(
              child: Text("Search Screen",
                  style: TextStyle(color: Constants.kBlackColor))),
        ));
  }
}
