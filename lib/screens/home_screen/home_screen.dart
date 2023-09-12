import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/screens/home_screen/tab_bar_design.dart';
import 'package:rev_app/screens/home_screen/tabs/all_categories.dart';
import 'package:rev_app/screens/home_screen/tabs/apartments.dart';
import 'package:rev_app/screens/home_screen/tabs/hotels.dart';
import 'package:rev_app/screens/home_screen/tabs/villas.dart';
import 'package:rev_app/shared_widgets/custom_app_bar_title.dart';

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
