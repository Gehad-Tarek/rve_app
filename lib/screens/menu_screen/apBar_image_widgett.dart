import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../shared/shared_widgets/text_button_widget.dart';
import '../select_login_signup/select_login_signup_screen.dart';

class ApBarImageWidgett extends StatelessWidget {
  const ApBarImageWidgett({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          top: height * 0.05, left: width * 0.03, right: width * 0.03),
      height: height * 0.45,
      width: width,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          //color: Constants.kBlueColor,
          image: DecorationImage(
              image: AssetImage(
                '${Constants.kFantasticImage}',
              ),
              fit: BoxFit.cover),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,

        // mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              height: height * 0.091,
              width: width * 0.21,
              child: Image.asset(Constants.kLogoTextImages)),
          Material(
            color: Colors.transparent,
           // width: width * 0.2,
            child: TextButtonWidget(
              decoration: TextDecoration.none,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const SelectLoginSignUpScreen()));
              },
              text: 'Logout',
              colorText: Constants.kWhiteColor,
            ),
          )
        ],
      ),
    );
  }
}
