import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';

class AppBarImageLogin extends StatelessWidget {
  const AppBarImageLogin({super.key});

  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return   Container(
                    padding: EdgeInsets.only(
                        top: height * 0.05,
                        left: width * 0.03,
                        right: width * 0.03),
                    height: height * 0.55,
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
                      margin: EdgeInsets.only(top: height * 0.1),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.1,
                            width: width * 0.44,
                            // child: Image.asset('${Constants.kLogoImage}')),
                            child: Image.asset(
                                'assets/images/cropped-IMG_0679-1.png',
                                color: Constants.kWhiteColor),
                          ),
                          Text(
                            'Right Vaction Exchange',
                            style: Constants.TwhileBoldFont,
                          ),
                        ],
                      ),
                    ),
                  );
  }
}