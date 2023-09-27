import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../shared/shared_widgets/elevated_button_widget.dart';
import '../select_login_signup/select_login_signup_screen.dart';
import 'app_bar_image.dart';
import 'circle_row_widget.dart';
import 'on_boarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});
  static final String routeName = "onBoardingScreen";
  var boradControl = PageController();
  bool isLast = false;
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (int index) {
        if (index == BoardingModel.boardingList.length - 1) {
          setState(() {
            widget.isLast = true;
            //  value = index;
          });
          // print('last');
        } else {
          //  print('no last');
          setState(() {
            widget.isLast = false;
          });
        }
        setState(() {
          value = index;
        });
      },
      controller: widget.boradControl,
      itemBuilder: (context, index) =>
          BuildBoradingScreen(BoardingModel.boardingList[index]),
      itemCount: BoardingModel.boardingList.length,
    );
  }

  Widget BuildBoradingScreen(BoardingModel model) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          AppBarImage(model: model),
          SizedBox(
            height: height * 0.016,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * .03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircRowWidget(
                        index: 0,
                        c1: Constants.kBlueColor,
                        c2: Constants.kMaintBlueColor,
                        value: value),
                    CircRowWidget(
                        index: 1,
                        c1: Constants.kBlueColor,
                        c2: Constants.kMaintBlueColor,
                        value: value),
                    CircRowWidget(
                        index: 2,
                        c1: Constants.kBlueColor,
                        c2: Constants.kMaintBlueColor,
                        value: value),
                    CircRowWidget(
                        index: 3,
                        c1: Constants.kBlueColor,
                        c2: Constants.kMaintBlueColor,
                        value: value),
                  ],
                ),
                SizedBox(
                  height: height * 0.016,
                ),
                Text(
                  '${model.title}',
                  style: Constants.TtitleFontBlue,
                ),
                SizedBox(
                  height: height * 0.016,
                ),
                Text('${model.body}'),
                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      (model.sizedHheight!.toDouble()),
                ),
                Center(
                  child: ElevatedButtonWidget(
                    onPressed: () {
                      if (widget.isLast) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SelectLoginSignUpScreen()));
                      } else {
                        widget.boradControl.nextPage(
                            duration: const Duration(milliseconds: 750),
                            curve: Curves.fastLinearToSlowEaseIn);
                      }
                    },
                    height: height * 0.045,
                    width: width * 0.7,
                    text: 'Next',
                    cBorder: Colors.transparent,
                    cButton: Constants.kBlueColor,
                    cText: Constants.kWhiteColor,
                   alignment: Alignment.center, borderRadius: BorderRadius.circular(40),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
