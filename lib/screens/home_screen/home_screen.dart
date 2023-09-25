import 'package:flutter/material.dart';
import 'tab_bar_design.dart';

import '../../constants/constants.dart';
import '../../shared/shared_widgets/custom_app_bar_title.dart';
// >>>>>>> 62a27d715ed747538c4fb80db844ab231894e078

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // List<String> homeScreenTabs = ["All", "Hotels", "Apartments", "Villas"];

    return Scaffold(
      backgroundColor: Constants.kMaintBlueColor,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        backgroundColor: Constants.kBlueColor,
        elevation: 10,
        title: CustomAppBarTitle(),
      ),
      body: Column(
        children: [
          SizedBox(height: height * 0.03,),
          Expanded(
            child: TabBarDesign(),
          )
        ],
      ),
    );
  }
}
