import 'package:flutter/material.dart';
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
      left: width * 0.04,
      right: width * 0.04,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: height * 0.014),
        height: height <= 667 ? height * 0.75 : height * 0.65, //48
        width: width-width*0.001,
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
               aspectRatio: 1.3/ 0.6,
              child: ListView.builder(
             //   padding: EdgeInsets.only(right: width*width*0.5),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: width*0.037),
                 height: height*0.1,
                   width: width*0.38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('${Constants.kFantasticImage}',),fit: BoxFit.cover)),
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
                  padding:  EdgeInsets.only(top: height*0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    Text('Rixos Hotel',style: Constants.TtitleBlackFont.copyWith(fontSize: 16,height: 1.1),),
                     const SizedBox(height: 1,),
                    Text('Sharm El shikh',style: Constants.TtitleBlackFont.copyWith(fontSize: 16,fontWeight: FontWeight.normal,height: 1.2),),
                    const SizedBox(height: 1,),
                    Text('Room Number:G 114',style: TextStyle(color: Constants.kBlueColor,height: 1.3),),
                  ],),
                ),
                TextButtonWidget(onPressed: (){}, text: 'View Details', decoration: TextDecoration.underline, colorText: Constants.kBlueColor)
              ],
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
