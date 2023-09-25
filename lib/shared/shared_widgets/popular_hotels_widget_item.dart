import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../shared_responsive.dart';

class PopolerHotelsWidgetItem extends StatelessWidget {
   PopolerHotelsWidgetItem({super.key,required this.index,required this.images,required this.nameHotel,required this.location,required this.price,required this.rate});
  final int? index;
   final String? images;
  final String? nameHotel;
  final String? location;
  final String? price;
  final String? rate;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      // constraints: BoxConstraints(maxWidth: width*0.9),
      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
      margin: EdgeInsets.only(bottom: height * 0.01),
      height: height * 0.086,
      width: width * 0.9,

      child: Row(
        children: [
          Container(
            height: height * 0.08,
            width: width * 0.155,
            decoration: BoxDecoration(
              // color: Constants.kRedColor,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage('${images!}'),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.01),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('${nameHotel!}',
                        style: TextStyle(
                            color: Constants.kBlackColor, fontSize: 13)),
                    SizedBox(
                      width: width == 360
                          ? width * 0.09
                          : sizedboxWidethPopularHotelWidget(
                              width), // width >= 375 ? width / 9 : width / 20,
                    ), //height <= 677 ? width*0.08:width*0.1

                    Text('${rate!}')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 14,
                    ),
                    Text('${location!}',
                        style: TextStyle(
                            color: Constants.kBlackColor, fontSize: 13)),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    const Text(
                      'Prise to Change',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                    Text(
                      '${price!}',
                      style: TextStyle(
                          fontSize: 12,
                          color: Constants.kBlueColor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}