import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/screens/select_to_change_screen/item_list_view_selectToChange.dart';

class PartitionSelectToChangeScreen extends StatelessWidget {
  const PartitionSelectToChangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
     final width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height <= 677 ? height * 0.195 : height * 0.25,
      left: width * 0.04,
      right: width * 0.04,
      child: Container(
        padding: EdgeInsets.symmetric(
            // horizontal: width * 0.03,
            vertical: height * 0.014),
        height: height <= 667 ? height * 0.8 : height * 0.7, //48
        width: width * 0.85,
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
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '      Select To Change',
                  style: Constants.TtitleBlackFont.copyWith(fontSize: 18),
                  textAlign: TextAlign.left,
                )),
            SizedBox(
              height: height * 0.02,
            ),
            Divider(
              color: Constants.kGreyColor.withOpacity(0.7),
              height: 1,
              endIndent: 10,
              thickness: 1,
              indent: 10,
            ),
            SizedBox(
              height: height * 0.02,
            ),
       const  ItemListViewSelectToChange(),
            SizedBox(
              height: height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
