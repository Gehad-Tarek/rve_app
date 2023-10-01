// import 'dart:html';

import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../../shared/shared_widgets/popular2.dart';

// import '../../../shared/shared_widgets/popular_hotels_widget_item.dart';
// import '../../details_screen/details_screen.dart';

class AllCategories extends StatelessWidget {
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
    }
  ];
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
      padding: EdgeInsets.only(bottom: height * 0.02),
      // height: height * 0.6,
      color: Constants.kMaintBlueColor,
      // color: Colors.red,
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
              style: TextStyle(
                  color: Constants.kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Container(
            height: height * 0.16,
            margin: EdgeInsets.only(left: width * 0.01),
            // width: width * 0.98,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: promotionsImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(children: [
                    // Background Image
                    Container(
                      width: width * 0.7,
                      height: height * 0.16,
                      margin: EdgeInsets.symmetric(horizontal: width * 0.03),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage(promotionsImages[index]),
                          // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: width * 0.15,
                        height: height * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        margin: EdgeInsets.only(left: width * 0.03),
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0)),
                            // Adjust the radius as needed
                            child: CustomPaint(
                              size: Size(width * 0.15, height * 0.08),
                              // Size of the rectangle
                              painter: HalfRectanglePainter(),
                            )),
                      ),
                    ),
                    Positioned(
                      bottom: 0, // Adjust the bottom position as needed
                      left: 0, // Adjust the left position as needed
                      child: Container(
                          margin: EdgeInsets.only(left: width * 0.03),
                          width: width * 0.7,
                          // height: height * 0.08,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0)
                              ], // Adjust the colors as needed
                            ),
                          ),
                          // Background color with opacity
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: width * 0.01),
                                child: Text(
                                  "Sheraton Hotel",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Constants.kWhiteColor),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.015,
                                    vertical: height * 0.006),
                                decoration: BoxDecoration(
                                  color: Constants.kBlackColor.withOpacity(0.7),
                                  borderRadius:
                                      BorderRadius.circular(width * 0.1),
                                ),
                                margin: EdgeInsets.only(right: width * 0.01),
                                child: Icon(
                                  Icons.share_outlined,
                                  color: Constants.kWhiteColor,
                                  size: width * 0.06,
                                ),
                              )
                            ],
                          )),
                    ),
                  ]);
                }),
          ),
          Container(
              width: width,
              padding: EdgeInsets.symmetric(vertical: height * 0.02),
              margin: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended For You",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Constants.kBlackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text("See More",
                        style: TextStyle(
                          color: Constants.kBlueColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                        )),
                  ),
                ],
              )),
          Container(
            height: height * 0.14,
            margin: EdgeInsets.only(left: width * 0.01),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: promotionsImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(children: [
                    // Background Image
                    Container(
                      width: width * 0.24,
                      height: height * 0.14,
                      margin: EdgeInsets.symmetric(horizontal: width * 0.03),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage(promotionsImages[index]),
                          // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0, // Adjust the bottom position as needed
                      left: 0, // Adjust the left position as needed
                      child: Container(
                          margin: EdgeInsets.only(left: width * 0.03),
                          width: width * 0.24,
                          // height: height * 0.08,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0)
                              ], // Adjust the colors as needed
                            ),
                          ),
                          // Background color with opacity
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // padding: EdgeInsets.only(left: width * 0.005),
                                child: Text(
                                  "Sheraton",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Constants.kWhiteColor),
                                ),
                              ),
                              // RichText(
                              //   text: TextSpan(
                              //     children: [
                              //       TextSpan(
                              //         text: '4,7',
                              //         style: TextStyle(
                              //             color: Colors.black, fontSize: 12.0),
                              //       ),
                              //       TextSpan(
                              //         text: ' ★',
                              //         style: TextStyle(
                              //           color: Constants.kYellowColor,
                              //           fontSize: 18.0,
                              //           fontWeight: FontWeight.bold,
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                            ],
                          )),
                    ),
                  ]);
                }),
          ),
          Container(
              width: width,
              padding: EdgeInsets.symmetric(vertical: height * 0.02),
              margin: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Hotels",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Constants.kBlackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text("See More",
                        style: TextStyle(
                          color: Constants.kBlueColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                        )),
                  ),
                ],
              )),
          Container(
            width: width,
            child: InkWell(
              onTap: () {},
              child: ListView.builder(
                shrinkWrap: true,
                // padding: EdgeInsets.zero,
                itemCount: selectToChangeScreen.length,
                itemBuilder: (context, index) {
                  return Popular2(
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
          ),
        ],
      ),
    );
  }
}

class HalfRectangleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return CustomPaint(
      size: Size(width * 0.14, height * 0.1), // Size of the rectangle
      painter: HalfRectanglePainter(),
    );
  }
}

class HalfRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =
          Constants.kYellowColor.withOpacity(0.8) // Color of the half rectangle
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width, 0); // Top-right point
    path.lineTo(0, 0); // Top-left point
    path.lineTo(0, size.height); // Bottom-left point
    path.close(); // Close the path to create a shape
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
