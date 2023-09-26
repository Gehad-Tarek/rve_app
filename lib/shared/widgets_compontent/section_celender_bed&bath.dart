import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class SectionCelenderBedAndBath extends StatelessWidget {
  const SectionCelenderBedAndBath({super.key});

  @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
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
                    Text(
                      'From',
                      style: Constants.TtitleBlackFont.copyWith(fontSize: 18),
                    ),
                const     Text(
                      '20 ApriL 2022 pm',
                      style: TextStyle(fontSize: 11),
                    ),
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
                    Text(
                      'To',
                      style: Constants.TtitleBlackFont.copyWith(fontSize: 18),
                    ),
                  const   Text(
                      '20 ApriL 2022 pm',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
            
              ],
            ),
           
      ],
    );
  }
}