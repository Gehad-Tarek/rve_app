import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class BoolWidget extends StatelessWidget {
  const BoolWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.pool,
          color: Constants.kDarkGreyColor,
          size: height * 0.03,
        ),
        const Text(
          'pool',
          style: TextStyle(fontSize: 11),
        )
      ],
    );
  }
}