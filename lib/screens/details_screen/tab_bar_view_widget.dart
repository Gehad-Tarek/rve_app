import 'package:flutter/material.dart';
import 'tab_bar_view/view_about_bar_screen.dart';
import 'tab_bar_view/view_contant_bar_screen.dart';
import 'tab_bar_view/view_review_bar_screen/view_review_bar_screen.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
      child:const TabBarView(children: [
        ViewAboutBarScreen(),
        ViewContantBarScreen(),
        ViewReviewBarScreen(),
        
      ]),
    );
  }
}