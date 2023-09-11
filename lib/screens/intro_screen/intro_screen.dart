import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  static final String routeName = "Intro Screen";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color(0xfff8f8f8),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(0),
              width: width,
              height: height * 0.6,
              // color: Colors.green,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Image.asset(
                    "assets/images/3.jpg",
                    width: width * 1,
                    // height: height * 1.2,
                    // color: Colors.red,
                  ),
                  Text(
                      "Skip",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                      ),
                    ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(
                  //       horizontal: width * 0.5, vertical: height * 0.03),
                  //   child: Image.asset(
                  //     "assets/images/logo.png",
                  //     width: width * 0.3,
                  //     height: height * 0.03,
                  //   ),
                  // )
                  // Image.asset(
                  //   "assets/images/logo.png",
                  //   // width: width * 0.1,
                  //   // height: height * 0.05,
                  // ),
                  // Text(
                  //   "Skip",
                  //   style: TextStyle(color: Color(0xff0408a6), fontSize: 14),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
