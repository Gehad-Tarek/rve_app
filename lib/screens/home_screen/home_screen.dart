import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../shared_widgets/custom_app_bar_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
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
              child: Text("Home Screen",
                  style: TextStyle(color: Constants.kBlackColor))),
        ));
  }
}
