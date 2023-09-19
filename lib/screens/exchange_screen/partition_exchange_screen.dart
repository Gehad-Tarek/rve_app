import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/shared/shared_widgets/elevated_button_widget.dart';
import 'package:rev_app/shared/shared_widgets/text_button_widget.dart';

class PartitionExchangeScreen extends StatefulWidget {
  const PartitionExchangeScreen({super.key});
  @override
  State<PartitionExchangeScreen> createState() =>
      _PartitionExchangeScreenState();
}

class _PartitionExchangeScreenState extends State<PartitionExchangeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height * 0.165,
      left: width * 0.03,
      right: width * 0.03,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.02, vertical: height * 0.014),
        height: height <= 667 ? height * 0.8 : height * 0.7, //48
        width: width,
        decoration: BoxDecoration(
          color: Constants.kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Booking Information',
                  style: Constants.TtitleBlackFont.copyWith(fontSize: 19),
                  textAlign: TextAlign.left,
                )),
            SizedBox(
              height: height * 0.01,
            ),
            AspectRatio(
              aspectRatio: 1.3 / 0.6,
              child: ListView.builder(
                  //   padding: EdgeInsets.only(right: width*width*0.5),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: width * 0.037),
                      height: height * 0.1,
                      width: width * 0.38,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                Constants.kFantasticImage,
                              ),
                              fit: BoxFit.cover)),
                    );
                  }),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Rixos Hotel',
                        style: Constants.TtitleBlackFont.copyWith(
                            fontSize: 16, height: 1.1),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Text(
                        'Sharm El shikh',
                        style: Constants.TtitleBlackFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            height: 1.2),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Text(
                        'Room Number:G 114',
                        style:
                            TextStyle(color: Constants.kBlueColor, height: 1.3),
                      ),
                    ],
                  ),
                ),
                TextButtonWidget(
                    onPressed: () {},
                    text: 'View Details',
                    decoration: TextDecoration.underline,
                    colorText: Constants.kBlueColor)
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              height: height * 0.1,
//padding: const EdgeInsets.only(top: 5),
//decoration: BoxDecoration(color: Constants.kBlackColor),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                //  mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        height: height * 0.05,
                        width: width * 0.08,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Constants.kDarkGreyColor)),
                        child: Icon(FontAwesomeIcons.dumbbell,
                            size: 14, color: Constants.kDarkGreyColor),
                      ),
                      SizedBox(
                        height: height * 0.0175,
                      ),
                      const Text(
                        'Gym',
                        style: TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.pool,
                          color: Constants.kDarkGreyColor,
                          size: height * 0.032,
                        ),
                        //   Spacer(),
                        //   SizedBox(height: height*0.022,),
                        //  SizedBox(height:height<=670? height*0.029:height*0.03,),
                        const Text(
                          'pool',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.wifi,
                          color: Constants.kDarkGreyColor,
                          size: height * 0.032,
                        ),
                        // SizedBox(
                        //   height: height * 0.021,
                        // ),
                        //  Spacer(),
                        // SizedBox(height:height<=670? height*0.029:height*0.03,),
                        // Spacer(),
                        const Text(
                          'Free Wifi',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * 0.085,
                        height: height * 0.05,
                        child: Image.asset(
                          Constants.kSbaImages,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      const Text(
                        'Spa',
                        style: TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ), // Icon(FontAwesomeIcons.utensils),
                  Column(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        height: height * 0.05,
                        width: width * 0.08,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Constants.kDarkGreyColor)),
                        child: Icon(FontAwesomeIcons.utensils,
                            size: 14, color: Constants.kDarkGreyColor),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      const Text(
                        'Resturant',
                        style: TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.zero,
                          margin: EdgeInsets.zero,
                          height: height * 0.05,
                          width: width * 0.075,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Constants.kDarkGreyColor)),
                          child: const Text(
                            'P',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      const Text(
                        'Parking',
                        style: TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                Container(
                  height: height * 0.045,
                  width: width * 0.12,
                  decoration: BoxDecoration(
                    color: Constants.kGreyColor.withOpacity(0.19),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  //  child: Icon(Icons.bathtub),
                  child: Icon(
                    Icons.bed,
                    color: Constants.kDarkGreyColor,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                const Text('3 Bedroom'),
                SizedBox(
                  width: width * 0.05,
                ),
                Container(
                  height: height * 0.045,
                  width: width * 0.12,
                  decoration: BoxDecoration(
                    color: Constants.kGreyColor.withOpacity(0.19),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.bathtub, color: Constants.kDarkGreyColor),
                  //child: Icon(Icons.bed,color: Constants.kDarkGreyColor,),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                const Text('2 Bathroom'),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Container(
                  height: height * 0.045,
                  width: width * 0.12,
                  decoration: BoxDecoration(
                    color: Constants.kGreyColor.withOpacity(0.19),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  //  child: Icon(Icons.bathtub),
                  child: Icon(
                    Icons.calendar_month_outlined,
                    color: Constants.kDarkGreyColor,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('From',style: Constants.TtitleBlackFont.copyWith(fontSize: 18),),
                    Text('20 ApriL 2022 pm',style: TextStyle(fontSize: 11),),
                  ],
                ),
                SizedBox(
                  width: width * 0.05,
                ),

                    Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('To',style: Constants.TtitleBlackFont.copyWith(fontSize: 18),),
                    Text('20 ApriL 2022 pm',style: TextStyle(fontSize: 11),),
                  ],
                ),
                // Container(
                //   height: height * 0.045,
                //   width: width * 0.12,
                //   decoration: BoxDecoration(
                //     color: Constants.kGreyColor.withOpacity(0.19),
                //     borderRadius: BorderRadius.circular(8),
                //   ),
                //   child: Icon(Icons.bathtub, color: Constants.kDarkGreyColor),
                //   //child: Icon(Icons.bed,color: Constants.kDarkGreyColor,),
                // ),
                // SizedBox(
                //   width: width * 0.02,
                // ),
                // const Text('2 Bathroom'),
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            ElevatedButtonWidget(
              onPressed: () {},
              height: height * 0.065,
              width: width * 0.8,
              text: 'Exchange',
              cBorder: Colors.transparent,
              cButton: Constants.kBlueColor,
              cText: Constants.kWhiteColor,
              alignment: Alignment.center,
              borderRadius: BorderRadius.circular(15),
            ),
          ],
        ),
      ),
    );
  }
}
