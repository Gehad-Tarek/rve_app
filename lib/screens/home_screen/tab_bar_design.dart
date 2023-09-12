import 'package:flutter/material.dart';
import 'package:rev_app/screens/home_screen/tabs/all_categories.dart';
import 'package:rev_app/screens/home_screen/tabs/apartments.dart';
import 'package:rev_app/screens/home_screen/tabs/hotels.dart';
import 'package:rev_app/screens/home_screen/tabs/villas.dart';

import '../../constants/constants.dart';

class TabBarDesign extends StatefulWidget {
  const TabBarDesign({super.key});

  @override
  State<TabBarDesign> createState() => _TabBarDesignState();
}

class _TabBarDesignState extends State<TabBarDesign>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  void _handleTabChange() {
    setState(() {
      _currentIndex = _tabController.index;
      _tabController.animateTo(_currentIndex);
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
    _tabController.addListener(_handleTabChange);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    List<String> homeScreenTabs = ["All", "Hotels", "Apartments", "Villas"];
    List<Widget> homeTabsWidget = [
      AllCategories(),
      Hotels(),
      Apartments(),
      Villas()
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 1,
            child: Scaffold(
              backgroundColor: Constants.kMaintBlueColor,
              body: Column(
                children: [
                  TabBar(controller: _tabController, tabs: [
                    Container(
                        // color: Colors.red,
                        width: width * 0.8,
                        height: height * 0.06,
                        decoration: BoxDecoration(
                          color: Constants.kWhiteColor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ListView.builder(
                            itemExtent: width * 0.8 / homeScreenTabs.length,
                            itemCount: homeScreenTabs.length,
                            scrollDirection: Axis.horizontal,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Tab(
                                  child: Center(
                                      child: Text(
                                homeScreenTabs[index],
                                style:
                                    TextStyle(color: Constants.kDarkGreyColor),
                              )));
                            }))
                  ]),
                  Expanded(
                    child: TabBarView(controller: _tabController, children: [
                      Expanded(
                        child: Container(
                          // width: width,
                          // height: height,
                          child: ListView.builder(
                              itemCount: homeTabsWidget.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext Context, int index) {
                                return Tab(
                                  child: homeTabsWidget[index],
                                );
                              }),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            )));
  }
}
