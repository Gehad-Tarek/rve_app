import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../shared/shared_widgets/fav_widget.dart';
import 'tab_bar_view_widget.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}
class _DetailsScreenState extends State<DetailsScreen> {
  TabController? _controller;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //backgroundColor: Constants.kMaintBlueColor,
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          backgroundColor: Constants.kBlueColor,
          elevation: 10,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Constants.kWhiteColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Rixos Hotel',
            style: Constants.TwhileBoldFont.copyWith(fontSize: 20),
          ),
          actions:const [
            FavWidget(),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.02),
              height: height * 0.25,
              width: width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage(
                      '${Constants.kFantasticImage}',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.03),
              height: height * 0.05,
              width: width,
              child: TabBar(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered))
                      return Colors.transparent; //<-- SEE HERE
                    return null;
                  },
                ),
                physics: const AlwaysScrollableScrollPhysics(),
                dividerColor: Constants.kDarkGreyColor,
                tabAlignment: TabAlignment.start,
                indicatorColor: Constants.kBlueColor,
                unselectedLabelColor: Constants.kDarkGreyColor,
                onTap: (value) {},
                isScrollable: true,
                labelStyle: const TextStyle(letterSpacing: .5),
                labelPadding: EdgeInsets.symmetric(horizontal: width * 0.1),
                indicatorSize: TabBarIndicatorSize.tab,
                controller: _controller,
                indicatorWeight: width * 0.0025,
                splashBorderRadius: BorderRadius.circular(40),
                tabs:const [
                  TextTitleTabBarWidget(txt:  'About',),
                  TextTitleTabBarWidget(txt:  'Contacts',),
                  TextTitleTabBarWidget(txt:  'Reviews',), 
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const TabBarViewWidget(),
          ],
        ),
      ),
    );
  }
}

class TextTitleTabBarWidget extends StatelessWidget {
  const TextTitleTabBarWidget({super.key,required this.txt});
final String? txt;
  @override
  Widget build(BuildContext context) {
    return    Text(
                    txt!,
                    style: TextStyle(
                        color: Constants.kBlackColor,
                        fontWeight: FontWeight.bold),
                  );
  }
}