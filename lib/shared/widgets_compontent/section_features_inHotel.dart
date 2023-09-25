import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/shared/widgets_compontent/bool_widget.dart';
import 'package:rev_app/shared/widgets_compontent/circle_gym_widget.dart';
import 'package:rev_app/shared/widgets_compontent/parcking_widget.dart';
import 'package:rev_app/shared/widgets_compontent/resturant_widget.dart';
import 'package:rev_app/shared/widgets_compontent/spa_widget.dart';
import 'package:rev_app/shared/widgets_compontent/wifi_widget.dart';

class SectionFeaturesInHotel extends StatelessWidget {
  const SectionFeaturesInHotel({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.1,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleGym(),
          SizedBox(
            width: width * 0.05,
          ),
          const BoolWidget(),
          SizedBox(
            width: width * 0.05,
          ),
          const WifiWidget(),
          SizedBox(
            width: width * 0.05,
          ),
          const SpaWidget(),
          SizedBox(
            width: width * 0.05,
          ),
          const ResturantWidget(),
          SizedBox(
            width: width * 0.05,
          ),
          const ParckingWidget(),
        ],
      ),
    );
  }
}
