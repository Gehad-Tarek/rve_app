import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/shared/shared_widgets/popular_hotels_widget_item.dart';

class HotelsScreenBarSearch extends StatelessWidget {
  HotelsScreenBarSearch({super.key});
  // List recentSearches = [
  //   'L Hotel 1',
  //   'Sharm 2',
  //   'L Hotel 3',
  //   'Sharm 4',
  //   'L Hotel 5',
  //   // 'Sharm 6',
  //   // 'L Hotel 7',
  //   // 'Sharm 8',
  //   // 'L Hotel 9',
  //   // 'Sharm 10',
  //   // 'L Hotel 0',
  //   // 'Sharm 1',
  //   // 'L Hotel 2',
  //   // 'Sharm 3',
  //   // 'L Hotel 4',
  //   // 'Sharm 5',
  //   // 'L Hotel 6',
  //   // 'Sharm 7',
  //   // 'L Hotel 8',
  //   // 'Sharm 9',
  //   // 'L Hotel 10',
  // ];
  List selectToChangeScreen = [
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '1.5 \★',
      'price': '100\$',
      'image': '${Constants.kBeachImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '2.5 \★',
      'price': '100\$',
      'image': '${Constants.kFantasticImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '3.5 \★',
      'price': '100\$',
      'image': '${Constants.kBeachImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '4.5 \★',
      'price': '100\$',
      'image': '${Constants.kFantasticImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '5.0 \★',
      'price': '100\$',
      'image': '${Constants.kBeachImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '1.5 \★',
      'price': '100\$',
      'image': '${Constants.kFantasticImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '2.5 \★',
      'price': '100\$',
      'image': '${Constants.kBeachImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '3.5 \★',
      'price': '100\$',
      'image': '${Constants.kFantasticImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '4.5 \★',
      'price': '100\$',
      'image': '${Constants.kBeachImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '5.0 \★',
      'price': '100\$',
      'image': '${Constants.kFantasticImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '1.5 \★',
      'price': '100\$',
      'image': '${Constants.kBeachImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '2.5 \★',
      'price': '100\$',
      'image': '${Constants.kFantasticImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '3.5 ★',
      'price': '100\$',
      'image': '${Constants.kBeachImage}'
    },
    {
      'name': 'Xperience Kiroseiz Premier',
      'location': 'Sharm El_shikh',
      'rate': '4.5 \★',
      'price': '100\$',
      'image': '${Constants.kFantasticImage}'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
     // height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // shrinkWrap: true,
        // padding: EdgeInsets.zero,
        // physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * 0.05),
            child: Text(
              'Recent Searches',
              style: TextStyle(
                  color: Constants.kBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w800),
            ),
          ),
           Flexible(
            child: ListView.builder(
               physics:const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
               
                itemCount:5, //recentSearches.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      Icons.watch_later,
                      color: Constants.kGreyColor,
                    ),
                    title: Text('Concored Hotel'), //Text('${recentSearches[index]}'),
                    trailing: Icon(
                      Icons.pin_end,
                      color: Constants.kGreyColor,
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, top: height * 0.02),
            child: Text(
              'Popular Hotels',
              style: TextStyle(
                  color: Constants.kBlackColor,
                  fontSize: 19,
                  fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Flexible(
            child: ListView.builder(
              //  physics:const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: selectToChangeScreen.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.only(
                        bottom: height * 0.01,
                        left: width * 0.02,
                        right: width * 0.02),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Constants.kWhiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: PopolerHotelsWidgetItem(
                      index: index,
                      images: '${selectToChangeScreen[index]['image']}',
                      nameHotel: '${selectToChangeScreen[index]['name']}',
                      rate: '${selectToChangeScreen[index]['rate']}',
                      location: '${selectToChangeScreen[index]['location']}',
                      price: '${selectToChangeScreen[index]['price']}',
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
