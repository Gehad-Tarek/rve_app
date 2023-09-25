import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'partition_governorate_screen.dart';
import '../../shared/shared_widgets/app_bar_image_sign_in_up.dart';

class GovernorateScreen extends StatefulWidget {
  const GovernorateScreen({super.key});

  @override
  State<GovernorateScreen> createState() => _GovernorateScreenState();
}

class _GovernorateScreenState extends State<GovernorateScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: ListView(shrinkWrap: true, padding: EdgeInsets.zero, 
   physics:const NeverScrollableScrollPhysics(),
      children: [
        SizedBox(
          height: height, //- height * .18,
          width: width,
          child: Stack(
            children: [
              AppBarImageSigninAndUp(
                  heightAppBarImage: height * 0.44,
                  paddingHeiImage: height <= 677 ? height*0.03 : height * 0.07,
                  widthImage: width * 0.44,
                  fontSizedStyle: Constants.TwhileBoldFont),
        const PartitionGovernorateScreen(),
              Positioned(
                  top: height * 0.05,
                  // left: width * 0.08,
                  // right: width * 0.08,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Constants.kWhiteColor,
                        size: 25,
                      ))),
            ],
          ),
        ),
      ]),
    );
  }
}