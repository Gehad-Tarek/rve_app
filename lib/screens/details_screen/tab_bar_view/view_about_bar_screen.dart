import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../celender_screen/Calender_screen.dart';
import '../../../shared/shared_widgets/elevated_button_widget.dart';
import '../../../shared/widgets_compontent/section_celender_bed&bath.dart';
import '../../../shared/widgets_compontent/section_features_inHotel.dart';

class ViewAboutBarScreen extends StatelessWidget {
  const ViewAboutBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
        // width: width-width*0.01,
        constraints: BoxConstraints(maxWidth: width * 0.02),
        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
        // decoration: BoxDecoration(color: Constants.kGreenColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Text(
              'Rixos Sharm El Sheikh is a stunning 5-star adults friendly hotel designed to offer guests the ultimate in luxury, comfort and privacy. It offers a wide range of services and amenities to ensure the most enjoyable stay for all guests. Sports activities, entertainment, sunset parties and DJ nights. Guests can enjoy spacious and luxurious rooms and suites, Anjana Spa and an overall relaxing atmosphere that guarantees a tranquil atmosphere for every guest.',
              softWrap: true,
              maxLines: 8,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 13),
            ),
            SizedBox(
              height: height*0.025, 
            ),
              
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.01),
            child: const  SectionFeaturesInHotel()),

            const SectionCelenderBedAndBath(),
              SizedBox(
              height: height*0.025, 
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Price to Change',//style: TextStyle(color: Constants.kBlackColor,fontSize: 18,fontWeight: FontWeight.bold),),
                style: Constants.TtitleBlackFont.copyWith(fontSize: 18,height: 1)),
              SizedBox(
                width: width * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  '100\$',
             //       textAlign: TextAlign.center,
                  style: TextStyle(color: Constants.kYellowColor,fontWeight: FontWeight.bold,fontSize: 16,),
                ),
              ),
            ],
          ),
              SizedBox(
              height: height*0.025, 
            ),
            ElevatedButtonWidget(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const CalenderScreen()));
            },
            height: height * 0.065,
            width: width * 0.9,
            text: 'Exchange',
            cBorder: Colors.transparent,
            cButton: Constants.kBlueColor,
            cText: Constants.kWhiteColor,
            alignment: Alignment.center,
            borderRadius: BorderRadius.circular(15),
          ),
        const  SizedBox(
            height: 0,width: 0,
          ),
          ],
        ),
      );
  }
}