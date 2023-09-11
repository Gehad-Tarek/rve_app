import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomAppBarTitle extends StatelessWidget {
  // const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return  Center(
        child: Container(
          width: width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                Constants.kLogoImage,
                color: Constants.kWhiteBackground,
                width: width * 0.18,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    color: Constants.kWhiteBackground,
                    size: width * 0.1,
                  )),
              // ),
            ],
          ),
        ),
    );
      // leading: IconButton(
      //   onPressed: () {},
      //   padding:
      //       EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
      //   icon: Image.asset(
      //     Constants.kLogoImage,
      //     color: Constants.kWhiteBackground,
      //     // width: width * 0.2,
      //   ),
      // ),
      // actions: [
      //   Container(
      //     margin:
      //         EdgeInsets.only(right: width * 0.06, bottom: height * 0.01),
      //     child: IconButton(
      //         onPressed: () {},
      //         icon: Icon(
      //           Icons.notifications_none_outlined,
      //           color: Constants.kWhiteBackground,
      //           size: width * 0.1,
      //         )),
      //   )
      // ],
    // );
  }
}
