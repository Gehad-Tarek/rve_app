import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'partition_choose_your_week.dart';
import '../../shared/shared_widgets/app_bar_image_sign_in_up.dart';

class ChooseYourWeek extends StatefulWidget {
  const ChooseYourWeek({super.key});

  @override
  State<ChooseYourWeek> createState() => _ChooseYourWeekState();
}

class _ChooseYourWeekState extends State<ChooseYourWeek> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: ListView(shrinkWrap: true, padding: EdgeInsets.zero, children: [
        SizedBox(
          height: height, //- height * .18,
          width: width,
          child: Stack(
            children: [
              AppBarImageSigninAndUp(
                  heightAppBarImage: height * 0.55,
                  paddingHeiImage: height == 640 ? 10 : height * 0.1,
                  widthImage: width * 0.44,
                  fontSizedStyle: Constants.TwhileBoldFont),
              const partitionChooseYourWeek(),
              Positioned(
                  top: height * 0.08,
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
