import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomAppBarTitle extends StatelessWidget {

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
  }
}
