import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class AppBarImageSigninAndUp extends StatelessWidget {
  const AppBarImageSigninAndUp(
      {super.key,
      required this.heightAppBarImage,
      required this.paddingHeiImage,
      required this.widthImage,
      this.fontSizedStyle});
  //bool coScreen ;this.coScreen=false
  final double? paddingHeiImage;
  final double? widthImage;
  final TextStyle? fontSizedStyle;
  final double? heightAppBarImage;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          top: height * 0.03, left: width * 0.03, right: width * 0.03),
      height:heightAppBarImage ,//height * 0.55
      width: width,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          //   color: Constants.kRedColor,
          image: DecorationImage(
              image: AssetImage(
                '${Constants.koneImage}',
              ),
              fit: BoxFit.cover),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Container(
        margin: EdgeInsets.only(
            top: paddingHeiImage!), //height == 640 ? 10: height * 0.1
        child: Column(
          children: [
            SizedBox(
              height: height * 0.1,
              width: widthImage!, // width * 0.44, // width * 0.44,
              // child: Image.asset('${Constants.kLogoImage}')),
              child: Image.asset('assets/images/cropped-IMG_0679-1.png',
                  color: Constants.kWhiteColor),
            ),
            Text('Right Vaction Exchange', style: fontSizedStyle!
                //  Constants.TwhileBoldFont,
                ),
          ],
        ),
      ),
    );
  }
}
