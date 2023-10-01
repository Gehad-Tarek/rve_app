import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/shared/shared_responsive.dart';

class Popular2 extends StatelessWidget {
  final int? index;
  final String? images;
  final String? nameHotel;
  final String? location;
  final String? price;
  final String? rate;

  Popular2(
      {super.key,
      required this.index,
      required this.images,
      required this.nameHotel,
      required this.location,
      required this.price,
      required this.rate});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Constants.kWhiteColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: EdgeInsets.only(bottom: height * 0.01),
        height: height * 0.065,
        width: width * 0.85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: height * 0.065,
              width: width * 0.15,
              decoration: BoxDecoration(
                // color: Constants.kRedColor,
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                    image: AssetImage(images!), fit: BoxFit.cover),
              ),
            ),
            // SizedBox(
            //   width: width * 0.02,
            // ),
            Container(
              width: width * 0.68,
              padding: EdgeInsets.only(right: width * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: width * 0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(nameHotel!,
                            style: TextStyle(
                                color: Constants.kBlackColor, fontSize: 13)),
                        SizedBox(
                          width: width == 360
                              ? width * 0.09
                              : sizedboxWidethPopularHotelWidget(
                                  width), // width >= 375 ? width / 9 : width / 20,
                        ), //height <= 677 ? width*0.08:width*0.1
                        Text(rate!)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.003,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 14,
                      ),
                      Text(location!,
                          style: TextStyle(
                              color: Constants.kBlackColor, fontSize: 13)),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      const Text(
                        'Prise to Change',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      Text(
                        price!,
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
      ),
    );
  }
}
