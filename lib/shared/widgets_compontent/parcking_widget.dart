import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class ParckingWidget extends StatelessWidget {
  const ParckingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            alignment: Alignment.center,
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            height: height * 0.05,
            width: width * 0.075,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Constants.kDarkGreyColor)),
            child: const Text(
              'P',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )),
        SizedBox(
          height: height * 0.015,
        ),
        const Text(
          'Parking',
          style: TextStyle(fontSize: 11),
        )
      ],
    );
  }
}
