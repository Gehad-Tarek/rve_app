import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/screens/details_screen/details_screen.dart';
import 'package:rev_app/shared/shared_responsive.dart';
import 'package:rev_app/shared/shared_widgets/popular_hotels_widget_item.dart';

class ItemListViewSelectToChange extends StatefulWidget {
  const ItemListViewSelectToChange({super.key});

  @override
  State<ItemListViewSelectToChange> createState() =>
      _ItemListViewSelectToChangeState();
}

class _ItemListViewSelectToChangeState
    extends State<ItemListViewSelectToChange> {
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

    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));
        },
        child: ListView.builder(
          
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: selectToChangeScreen.length,
          itemBuilder: (context, index) {
            return PopolerHotelsWidgetItem(
              index: index,
              images: '${selectToChangeScreen[index]['image']}',
              nameHotel: '${selectToChangeScreen[index]['name']}',
              rate: '${selectToChangeScreen[index]['rate']}',
              location: '${selectToChangeScreen[index]['location']}',
              price: '${selectToChangeScreen[index]['price']}',
            );
          },
        ),
      ),
    );
  }
}

//   Container PopularHotelWidget(double width, double height, int index) {
//     // return Container(
//     //   // constraints: BoxConstraints(maxWidth: width*0.9),
//     //   padding: EdgeInsets.symmetric(horizontal: width * 0.03),
//     //   margin: EdgeInsets.only(bottom: height * 0.01),
//     //   height: height * 0.086,
//     //   width: width * 0.9,

//     //   child: Row(
//     //     children: [
//     //       Container(
//     //         height: height * 0.08,
//     //         width: width * 0.155,
//     //         decoration: BoxDecoration(
//     //           // color: Constants.kRedColor,
//     //           borderRadius: BorderRadius.circular(20),
//     //           image: DecorationImage(
//     //               image: AssetImage('${selectToChangeScreen[index]['image']}'),
//     //               fit: BoxFit.cover),
//     //         ),
//     //       ),
//     //       SizedBox(
//     //         width: width * 0.02,
//     //       ),
//     //       Padding(
//     //         padding: EdgeInsets.only(top: height * 0.01),
//     //         child: Column(
//     //           mainAxisAlignment: MainAxisAlignment.start,
//     //           crossAxisAlignment: CrossAxisAlignment.start,
//     //           children: [
//     //             Row(
//     //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     //               children: [
//     //                 Text('${selectToChangeScreen[index]['name']}',
//     //                     style: TextStyle(
//     //                         color: Constants.kBlackColor, fontSize: 13)),
//     //                 SizedBox(
//     //                   width: width == 360
//     //                       ? width * 0.09
//     //                       : sizedboxWidethPopularHotelWidget(
//     //                           width), // width >= 375 ? width / 9 : width / 20,
//     //                 ), //height <= 677 ? width*0.08:width*0.1

//     //                 Text('${selectToChangeScreen[index]['rate']}')
//     //               ],
//     //             ),
//     //             Row(
//     //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //               children: [
//     //                 const Icon(
//     //                   Icons.location_on,
//     //                   size: 14,
//     //                 ),
//     //                 Text('${selectToChangeScreen[index]['location']}',
//     //                     style: TextStyle(
//     //                         color: Constants.kBlackColor, fontSize: 13)),
//     //                 SizedBox(
//     //                   width: width * 0.02,
//     //                 ),
//     //                 const Text(
//     //                   'Prise to Change',
//     //                   style:
//     //                       TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
//     //                 ),
//     //                 Text(
//     //                   '${selectToChangeScreen[index]['price']}',
//     //                   style: TextStyle(
//     //                       fontSize: 12,
//     //                       color: Constants.kBlueColor,
//     //                       fontWeight: FontWeight.bold),
//     //                 )
//     //               ],
//     //             ),
//     //           ],
//     //         ),
//     //       ),
//     //     ],
//     //   ),
//     // );
//   }
// }

// '${selectToChangeScreen[index]['price']}'
// '${selectToChangeScreen[index]['image']}'
// '${selectToChangeScreen[index]['name']}'
// '${selectToChangeScreen[index]['rate']}'
// '${selectToChangeScreen[index]['location']}'



