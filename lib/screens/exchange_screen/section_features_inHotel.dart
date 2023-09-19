import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rev_app/constants/constants.dart';

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

class WifiWidget extends StatelessWidget {
  const WifiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.wifi,
          color: Constants.kDarkGreyColor,
          size: height * 0.03,
        ),
        const Text(
          'Free Wifi',
          style: TextStyle(fontSize: 11),
        )
      ],
    );
  }
}

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

class ResturantWidget extends StatelessWidget {
  const ResturantWidget({super.key});

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
          child: Icon(FontAwesomeIcons.utensils,
              size: 14, color: Constants.kDarkGreyColor),
        ),
        SizedBox(
          height: height * 0.015,
        ),
        const Text(
          'Resturant',
          style: TextStyle(fontSize: 11),
        )
      ],
    );
  }
}

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
