import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/screens/bottom_nav_bar_design.dart';
import 'package:rev_app/shared/shared_widgets/elevated_button_widget.dart';

class PartitionReplyDoneScreen extends StatelessWidget {
  const PartitionReplyDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height <= 677 ? height * 0.3 : height * 0.3,
      left: width * 0.08,
      right: width * 0.08,
      child: Container(
        padding: EdgeInsets.only(top: height * 0.014),
        height: height <= 667 ? height * 0.6 : height * 0.5, //48
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
            Image.asset(
              '${Constants.kDoneImages}',
              height: height * 0.2,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Text(
              'we will Reply within 24 Hours',
              style: TextStyle(fontWeight: FontWeight.bold,height: 1.55,fontSize: 16),
            ),
            const Text(
              'You Changed From Plama Di Sharm',
              style: TextStyle(fontWeight: FontWeight.bold,height: 1.3,fontSize: 17),
            ),
            const Text(
              'Resort Hotel to',
              style: TextStyle(fontWeight: FontWeight.bold,height: 1.3,fontSize: 17),
            ),
            const Text(
              'Old Vic Sharm Resort Hotel on The',
              style: TextStyle(fontWeight: FontWeight.bold,height: 1.3,fontSize: 17),
            ),
            const Text(
              'Dat Corresponding',
              style: TextStyle(fontWeight: FontWeight.bold,height: 1.3,fontSize: 17),
            ),
            Text(
              'To April 20,2022',
              style: TextStyle(color: Constants.kGreyColor,height: 1.3,fontSize: 15),
            ),
            SizedBox(
              height:width<=412?height*0.018: height * 0.03,
            ),
            ElevatedButtonWidget(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomNavBarDesign()));},
              height: height * 0.05,
              width: width * 0.75,
              text: 'done',
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
