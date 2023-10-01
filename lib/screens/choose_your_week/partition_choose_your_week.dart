import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../shared/shared_widgets/elevated_button_widget.dart';
import '../governorate_screen/governorate_screen.dart';

class partitionChooseYourWeek extends StatelessWidget {
  const partitionChooseYourWeek({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height * 0.3,
      left: width * 0.08,
      right: width * 0.08,
      child: Container(
        padding: EdgeInsets.symmetric(
            // horizontal: width * 0.03,
            vertical: height * 0.014),
        height: height <= 667 ? height * 0.5 : height * 0.4, //48
        width: width * 0.68,
        decoration: BoxDecoration(
          color: Constants.kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '       Choose Your Week',
                  style: Constants.TtitleBlackFont.copyWith(fontSize: 19),
                  textAlign: TextAlign.left,
                )),
            SizedBox(
              height: height * 0.03,
            ),
            Divider(
              color: Constants.kGreyColor.withOpacity(0.7),
              height: 1,
              endIndent: 5,
              thickness: 1,
              indent: 5,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            ElevatedButtonWidget(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const GovernorateScreen()));},
              height: height * 0.06,
              width: width * 0.73,
              text: 'Basic Week',
              cBorder: Colors.transparent,
              cButton: Constants.kWhiteBackground,
              cText: Constants.kBlackColor,
              alignment: Alignment.centerLeft, borderRadius: BorderRadius.circular(40),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            ElevatedButtonWidget(
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> const GovernorateScreen()));},
              height: height * 0.06,
              width: width * 0.73,
              text: 'Extra Week',
              cBorder: Colors.transparent,
              cButton: Constants.kWhiteBackground,
              cText: Constants.kBlackColor,
              alignment: Alignment.centerLeft, borderRadius: BorderRadius.circular(40),
            ),
          ],
        ),
      ),
    );
  }
}
