import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/screens/bottom_nav_bar_design.dart';
import 'package:rev_app/screens/intro_screen/intro_screen.dart';
import 'package:rev_app/screens/on_boarding_screen/on_boarding_model.dart';
import 'package:rev_app/shared_widgets/text_button_widget.dart';

class AppBarImage extends StatelessWidget {
  const AppBarImage({
    super.key,
    required this.model
  });
final  BoardingModel model;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          top: height * 0.05, left: width * 0.03, right: width * 0.03),
      height: height * 0.55,
      width: width,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          //color: Constants.kBlueColor,
          image: DecorationImage(image:AssetImage('${model.image}',),fit: BoxFit.cover ),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              height: height * 0.08,
              width: width * 0.12,
              child: Image.asset(Constants.kLogoImage)),
          TextButtonWidget(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => BottomNavBarDesign()));
              },
              text: 'Skip')
        ],
    ),
);
}
}