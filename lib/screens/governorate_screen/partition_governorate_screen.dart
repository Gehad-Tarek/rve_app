import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/screens/select_to_change_screen/select_to_change_screen.dart';

class PartitionGovernorateScreen extends StatelessWidget {
  const PartitionGovernorateScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    List governorateNameItem = [
      'Alexandria',
      'Sharm El Sheikh',
      'Hurghada',
      'Ain Sokhna',
      'Luxor',
      'Aswan',
      'Marsa Matruh',
      'Governorate',
      'Alexandria',
      'Sharm El Sheikh',
      'Hurghada',
      'Ain Sokhna',
      'Luxor',
      'Aswan',
      'Marsa Matruh',
      'Governorate',
    ];
    return Positioned(
      top: height <= 677 ? height * 0.195 : height * 0.25,
      left: width * 0.08,
      right: width * 0.08,
      child: Container(
        padding: EdgeInsets.symmetric(
            // horizontal: width * 0.03,
            vertical: height * 0.014),
        height: height <= 667 ? height * 0.8 : height * 0.7, //48
        width: width * 0.68,
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
                  '      Governorate',
                  style: Constants.TtitleBlackFont.copyWith(fontSize: 18),
                  textAlign: TextAlign.left,
                )),
            SizedBox(
              height: height * 0.02,
            ),
            Divider(
              color: Constants.kGreyColor.withOpacity(0.7),
              height: 1,
              endIndent: 5,
              thickness: 1,
              indent: 5,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Expanded(
                child: ListView.builder(
              padding: EdgeInsets.zero,
              // padding: EdgeInsets.only(left: width*0.01,bottom: height*0.03,right: width*0.01),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SelectToChangeScreen()));
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: width * 0.037),
                    margin: EdgeInsets.only(
                        bottom: height * 0.01,
                        top: 0,
                        left: width * 0.02,
                        right: width * 0.02),
                    height: height * 0.055,
                    width: width * 0.075,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Constants.kWhiteColor,
                      border: Border.all(color: Constants.kGreyColor),
                    ),
                    child: Text(
                      '${governorateNameItem[index]}',
                      style: Constants.TtitleBlackFont.copyWith(
                          fontSize: 19, fontWeight: FontWeight.normal),
                    ),
                  ),
                );
              },
              itemCount: governorateNameItem.length,
            )),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
