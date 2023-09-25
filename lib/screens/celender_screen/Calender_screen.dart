import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'partition_Calender_screen.dart';
import '../../shared/shared_widgets/app_bar_image_sign_in_up.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          //physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: height, //- height * .18,
              width: width,
              child: Stack(
                children: [
                  AppBarImageSigninAndUp(
                      heightAppBarImage: height * 0.4,
                      paddingHeiImage:
                          height <= 677 ? height * 0.025 : height * 0.03,
                      widthImage: width * 0.44,
                      fontSizedStyle: Constants.TwhileBoldFont),
                  const PartitionCalenderScreen(),
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
