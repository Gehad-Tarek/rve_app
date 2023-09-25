import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class SpaWidget extends StatelessWidget {
  const SpaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          width: width * 0.085,
          height: height * 0.05,
          child: Image.asset(
            Constants.kSbaImages,
          ),
        ),
        SizedBox(
          height: height * 0.015,
        ),
        const Text(
          'Spa',
          style: TextStyle(fontSize: 11),
        )
      ],
    );
  }
}
