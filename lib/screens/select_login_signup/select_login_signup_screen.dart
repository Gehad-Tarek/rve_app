import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../bottom_nav_bar_design.dart';
import '../login_screen/login_screen.dart';
import '../sign_up_screen/sign_up_screen.dart';
import '../../shared/shared_widgets/app_bar_image_sign_in_up.dart';
import '../../shared/shared_widgets/elevated_button_widget.dart';

class SelectLoginSignUpScreen extends StatelessWidget {
  const SelectLoginSignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: ListView(shrinkWrap: true, padding: EdgeInsets.zero, children: [
        AppBarImageSigninAndUp(
            heightAppBarImage: height * 0.55,
            paddingHeiImage: height == 640 ? 10 : height * 0.1,
            widthImage: width * 0.44,
            fontSizedStyle: Constants.TwhileBoldFont),
        SizedBox(
          height: height * 0.1,
        ),
        Container(
          margin: EdgeInsets.only(
              left: width * 0.07,
              right: width * 0.07,
              top: height >= 812 ? height * 0.01 : height * 0.04),
          child: ElevatedButtonWidget(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            height: height * 0.06,
            width: width * 0.8,
            text: 'Login',
            cBorder: Constants.kBlueColor,
            cButton: Constants.kWhiteColor,
            cText: Constants.kBlackColor,
            alignment: Alignment.center,
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Container(
          margin: EdgeInsets.only(
              left: width * 0.07,
              right: width * 0.07,
              top: height >= 812 ? height * 0.01 : height * 0.04),
          child: ElevatedButtonWidget(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SignUpScreen()));
            },
            height: height * 0.06,
            width: width * 0.8,
            text: 'Creat an account',
            cBorder: Constants.kBlueColor,
            cButton: Constants.kWhiteColor,
            cText: Constants.kBlackColor,
            alignment: Alignment.center,
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Container(
          margin: EdgeInsets.only(
              left: width * 0.07,
              right: width * 0.07,
              top: height >= 812 ? height * 0.01 : height * 0.04),
          child: ElevatedButtonWidget(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const BottomNavBarDesign()));
            },
            height: height * 0.06,
            width: width * 0.8,
            text: 'Guest',
            cBorder: Constants.kBlueColor,
            cButton: Constants.kWhiteColor,
            cText: Constants.kBlackColor,
            alignment: Alignment.center,
            borderRadius: BorderRadius.circular(40),
          ),
        )
      ]),
    );
  }
}
