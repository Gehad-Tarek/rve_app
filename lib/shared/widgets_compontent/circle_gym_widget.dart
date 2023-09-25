import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rev_app/constants/constants.dart';

class CircleGym extends StatelessWidget {
  const CircleGym({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          height: height * 0.05,
          width: width * 0.08,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Constants.kDarkGreyColor)),
          child: Icon(FontAwesomeIcons.dumbbell,
              size: 14, color: Constants.kDarkGreyColor),
        ),
        SizedBox(
          height: height * 0.0175,
        ),
        const Text(
          'Gym',
          style: TextStyle(fontSize: 11),
        )
      ],
    );
  }
}