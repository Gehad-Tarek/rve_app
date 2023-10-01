import 'package:flutter/material.dart';
import 'package:rev_app/screens/search_screen/tab_view_screen/apartments_screen_barSearch.dart';
import 'package:rev_app/screens/search_screen/tab_view_screen/hotels_screen_barSearch.dart';
import 'package:rev_app/screens/search_screen/tab_view_screen/houses_screen_barSearch.dart';
import 'package:rev_app/screens/search_screen/tab_view_screen/vilas_screen_barSearch.dart';
import 'package:rev_app/screens/search_screen/widget_horiz_tab_bar/widget_horiz_tab_bar.dart';
import 'package:rev_app/shared/shared_widgets/fild_components.dart';
import '../../constants/constants.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}
class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  GlobalKey<FormState> searchKey = GlobalKey<FormState>();
  GlobalKey<FormState> _formKeySearchScreen = GlobalKey<FormState>();
  TabController? _controller;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
            centerTitle: false,
            title: Image.asset(
              Constants.kLogoImage,
              color: Constants.kWhiteBackground,
              width: width * 0.18,
            ),
          ),
          body: Form(
            key: _formKeySearchScreen,
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
             // physics:const AlwaysScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: width * 0.8,
                        child: CustomField(FieldModel(
                          controller: searchController,
                          //   icon: Icons.email,
                          labelTxt: 'search',
                          type: TextInputType.text,
                          fieldType: FieldType.search,
                          onsumbit: () {},
                          key: searchKey,
                        )),
                      ),
                      InkWell(
                        onTap: () {
                          print('cancel button');
                        },
                        child: Text(
                          'Cancel ',
                          style: TextStyle(
                              color: Constants.kBlueColor,
                              fontSize: 16,
                              height: 1.2,
                              fontWeight: FontWeight.w200),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  child: TabBar(
                      labelColor: Constants.kWhiteColor,
                      labelStyle: TextStyle(color: Constants.kWhiteColor),
                      indicator: BoxDecoration(
                        color: Constants.kBlueColor,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      //indicatorSize: TabBarIndicatorSize.tab,
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.transparent; //<-- SEE HERE
                          return null;
                        },
                      ),
                      controller: _controller,
                      labelPadding:
                          EdgeInsets.symmetric(horizontal: width * 0.02),
                      physics: const AlwaysScrollableScrollPhysics(),
                      dividerColor: Colors.transparent,
                      indicatorColor: Colors.transparent,
                      isScrollable: true,
                      // labelStyle: TextStyle(letterSpacing: .1),
                      tabs: [
                        WidgetHorizTabBar(
                          text: 'Hotels',
                          width: width * 0.2,
                        ),
                        WidgetHorizTabBar(
                          text: 'Apartments',
                          width: width * 0.25,
                        ),
                        WidgetHorizTabBar(
                          text: 'Vilas',
                          width: width * 0.2,
                        ),
                        WidgetHorizTabBar(
                          text: 'Houses',
                          width: width * 0.2,
                        ),
                      ]),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: TabBarView(children: [
                 HotelsScreenBarSearch(),
                 ApartmentsScreenBarSearch(),
                  VilasScreenBarSearch(),
                  HousesScreenBarSearch(),
                    
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
