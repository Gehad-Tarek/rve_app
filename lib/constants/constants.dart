import 'package:flutter/material.dart';

class Constants {
  ///color
  static final kMaintBlueColor = Color(0xffF0F1F6);
  static final kBlueColor = Color(0xff001E7F);
  static final kWhiteBackground = Color(0xffF8F8F8);
  static final kBlackColor = Color(0xff000000);
  static final kGreyColor = Color(0xffb6b3b3);
  static final kWhiteColor = Color(0xffFFFFFF);
  static final kYellowColor = Color(0xffFAB547);
  static final kLigthBlueColor = Color(0xff90CFDA);
  static final kGreenColor = Color(0xff34AA2C);
  static final kDarkGreyColor = Color(0xff666666);
  static final kRedColor = Color(0xffFF000A);

  ///style
  static final TextStyle TtitleFontBlue = TextStyle(
      fontFamily: 'ArbFONTS',
      height: 1.1,
      fontWeight: FontWeight.w900,
      fontSize: 22,
      color: Constants.kBlueColor);
  static final TextStyle TsubGreyFont = TextStyle(
      color: Constants.kDarkGreyColor,
      fontSize: 15.0,
      fontWeight: FontWeight.bold);
  static final TextStyle TwhileBoldFont = TextStyle(
      color: Constants.kWhiteColor, fontSize: 15, fontWeight: FontWeight.bold);
  static final TextStyle TtitleBlackFont = TextStyle(
    color: Constants.kBlackColor,
    fontWeight: FontWeight.w900,
    height: 1.5,
    decorationThickness: 4.5,
    fontSize: 22,
    fontFamily: 'ArbFONTS',
  );

  ///images
  static final kLogoImage = 'assets/images/cropped-IMG_0679-1.png';
  //static final kLogoWhiteImage = 'assets/images/cropped-IMG_0679-1.png';
  static final koneImage = 'assets/images/1.png';
  static final kTwoImage = 'assets/images/2.jpeg';
  static final kThreeImage = 'assets/images/3.jpg';
  static final kBeachImage = 'assets/images/beach-sea-18378306.webp';
  static final kFantasticImage =
      'assets/images/fantastic-seascape-with-ripples.jpg';
  static final kMessageImages = 'assets/images/message.png';
  static final kPhoneImages = 'assets/images/phone.png';
  static final kWhatsAppImages = 'assets/images/whatsApp.png';
  static final kLogoTextImages = 'assets/images/logoText.png';
}
