import 'package:flutter/material.dart';
import 'package:rev_app/screens/home_screen/tabs/all_categories.dart';
import 'package:rev_app/screens/home_screen/tabs/apartments.dart';
import 'package:rev_app/screens/home_screen/tabs/hotels.dart';
import 'package:rev_app/screens/home_screen/tabs/villas.dart';
import '../../constants/constants.dart';

class TabBarDesign extends StatefulWidget {
  @override
  State<TabBarDesign> createState() => _TabBarDesignState();
}

class _TabBarDesignState extends State<TabBarDesign>
    with SingleTickerProviderStateMixin {
  final List<String> tabNames = ['All', 'Hotels', 'Apartments', 'Villas'];
  final List<List<Widget>> tabContent = [
    [AllCategories(), Hotels(), Apartments(), Villas()],
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: tabNames.length,
          child: Scaffold(
            backgroundColor: Constants.kMaintBlueColor,
            body: Column(children: [
              Container(
                width: width * 0.95,
                height: height * 0.06,
                decoration: BoxDecoration(
                  color: Constants.kWhiteColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Constants.kBlueColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Constants.kDarkGreyColor,
                  labelPadding: EdgeInsets.zero,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  tabs: tabNames
                      .map((tabName) => Tab(
                            // child: Text(
                            //   "${tabName}",
                            //   style: TextStyle(color: Constants.kDarkGreyColor),
                            // ),
                            text: tabName,
                          ))
                      .toList(),
                ),
                // TabBar(
                //
                //   ListView.builder(
                //       itemExtent: width * 0.8 / tabNames.length,
                //       itemCount: tabNames.length,
                //       scrollDirection: Axis.horizontal,
                //       physics: NeverScrollableScrollPhysics(),
                //       itemBuilder: (BuildContext context, int index) {
                //         return tabs: Tab(
                //             child: Center(
                //                 child: Text(
                //           tabNames[index],
                //           style: TextStyle(color: Constants.kDarkGreyColor),
                //         )));
                //       }),
                // ]),
              ),
              Expanded(
                child: TabBarView(
                  children: tabNames
                      .asMap()
                      .map((index, tabName) {
                        return MapEntry(
                          // index 0 >> "All" , tabContent[0][0] >> AllCategoreis Widget, that means AllCategories screen will be viewed once you tab on All from tab bar
                          // index 1 >> "Hotels", tabContent[0][1] >> Hotels Widget, that means Hotels screen will be viewed once you tab on Hotels from tab bar
                          // index 2 >> "Apartments", tabContent[0][2] >> Apartments Widget, that means Apartments screen will be viewed once you tab on Apartments from tab bar
                          // index 3 >> "Villas", tabContent[0][3] >> Villas Widget, that means Villas screen will be viewed once you tab on Villas from tab bar
                          index,
                          ListView.builder(
                            itemCount: tabContent.length,
                            itemBuilder: (context, itemIndex) {
                              return tabContent[itemIndex][index];
                            },
                          ),
                        );
                        // tabContent[0][0]  >>> AllCategories
                        // tabContent[0][1]  >>> Hotels
                        // tabContent[0][2]  >>> Apartments
                        // tabContent[0][3]  >>> Villas
                      })
                      .values // AllCategories , Hotels, Apartments, Villas
                      .toList(), // [AllCategories(), Hotels(), Apartments(), Villas()]
                ),
              )
            ]),
          ),
        ));
  }
}
