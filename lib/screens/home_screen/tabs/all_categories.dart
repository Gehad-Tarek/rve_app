import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class AllCategories extends StatelessWidget {
  List<String> promotionsImages = [
    "assets/images/beautiful-tropical-beach-sea.jpg",
    "assets/images/popular-resort.jpg",
    "assets/images/small-house.jpg",
    "assets/images/swimming-pool-beach-luxury-hotel.jpg",
    "assets/images/swimming-pool-morning.jpg",
    "assets/images/complex-popular-resort-with-pools.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
        width: width,
        height: height,
        color: Constants.kMaintBlueColor,
        // margin: EdgeInsets.only(top: height * 0.05),
        // color: Colors.blueAccent,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(left: width * 0.04),
              child: Text(
                "Our Promotions",
                textAlign: TextAlign.start,
                // textAlign: TextAlign.start,
                style: TextStyle(
                    color: Constants.kBlackColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: promotionsImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        width: width * 0.75,
                        height: height * 0.3,
                        // color: Colors.purple,
                        margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: Stack(
                            // textDirection: TextDirection.ltr,
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(promotionsImages[index]),
                              ),
                              Container(
                                width: width,
                                height: height * 0.08,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.03),
                                decoration: BoxDecoration(
                                  color: Constants.kBlackColor.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Sheraton Hotel",
                                      // textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Constants.kWhiteColor),
                                    ),
                                    Container(
                                      width: width * 0.1,
                                      height: height * 0.05,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(width * 0.1),
                                        color: Constants.kBlackColor
                                            .withOpacity(0.6),
                                      ),
                                      child: Icon(Icons.share_outlined,
                                          color: Constants.kWhiteColor),
                                    ),
                                  ],
                                ),
                              ),
                            ]));
                  }),
            ),
            Expanded(
              flex: 3,
              child: Text("jfhbj",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
            )
          ],
        ));
  }
}
