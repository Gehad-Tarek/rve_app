import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/screens/choose_your_week/choose_your_week.dart';
import 'package:rev_app/shared/shared_widgets/mini_image_background_widget.dart';
import 'package:rev_app/screens/exchange_screen/section_celender_bed&bath.dart';
import 'package:rev_app/screens/exchange_screen/section_features_inHotel.dart';
import 'package:rev_app/screens/exchange_screen/section_name_hotel.dart';
import 'package:rev_app/shared/shared_responsive.dart';
import 'package:rev_app/shared/shared_widgets/elevated_button_widget.dart';


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
        height:responsiveHeighPartionExchange(height), //height <= 667 ? height * 0.8 : height * 0.7, //48
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
           const  MiniImagesBackGroundWidget(),
            SizedBox(
              height: height * 0.01,
            ),
          const   SectionNameHotel(),
            SizedBox(
              height: height * 0.01,
            ),
            const SectionFeaturesInHotel(),
            SizedBox(
              height: height * 0.01,
            ),
         const  SectionCelenderBedAndBath(),
            SizedBox(
              height: height * 0.04,
            ),
            ElevatedButtonWidget(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChooseYourWeek()));
              },
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
