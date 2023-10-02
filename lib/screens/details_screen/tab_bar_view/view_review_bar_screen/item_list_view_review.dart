import 'package:flutter/material.dart';
import '../../../../shared/shared_responsive.dart';
import '../../../../shared/shared_widgets/text_button_widget.dart';
import '../../../../constants/constants.dart';
import 'rating_bar_widget.dart';

class ItemListViewReview extends StatelessWidget {
  const ItemListViewReview({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: height * 0.01),
      padding: EdgeInsets.only(top: height * 0.015, left: width * 0.015),
      height:responsiveHeighContinerReviewBar(height),//height>=640?height *0.22:height>=800? height * 0.13:height*0.07,//16
      width: width * 1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Constants.kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            maxRadius: 27,
            // radius: 20,
            minRadius: 20,
            backgroundImage: AssetImage('${Constants.kBeachImage}'),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Meria',
                    style: TextStyle(
                        color: Constants.kBlackColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: width * 0.34,
                  ),
                  const RatingBarWidget(),
                ],
              ),
              const Text('22/5/2022'),
              SizedBox(
                height: height * 0.005,
              ),
              // const Text('''Oh my goodness..this was one of the best dinners my \ndaughter and I had while visiting the Maldives! Each \ncourse was different and the taste of each dish was so \nwell prepared and fresh''',
              //       softWrap: true,
              //       overflow: TextOverflow.ellipsis,
              //       maxLines: 4,
              //       style: TextStyle(fontSize: 11,height: 1.1),
              //       ),
              //       Expanded(
              //         //width: width*0.01,
              //         child: TextButtonWidget(
              //           colorText: Constants.kGreenColor,
              //           decoration:TextDecoration.underline ,
              //           onPressed: () {
              //           },
              //           text:'More' ,
              //         ),
              //       ),
              Container(
                width: width*0.72,
               child:  RichText(
                    text: TextSpan(
                   text:
                      '''Oh my goodness..this was one of the best dinners my daughter and I had while visiting the Maldives! Each course was different and the taste of each dish was so well prepared and fresh ''',
                  style: TextStyle(fontSize: 13, height: 1.2,color: Constants.kBlackColor),),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(
                  width: width*0.6,
                 ),
                  InkWell(
                    onTap: () {
                      print('Text more button'); 
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text('More',style: TextStyle(color: Constants.kGreenColor,fontSize: 12),)),
                  ),
                ],
              ),
              // Container(
              //   width: width*0.7,
              //   child: RichText(
              //       text: TextSpan(
              //           text:
              //               '''Oh my goodness..this was one of the best dinners my daughter and I had while visiting the Maldives! Each course was different and the taste of each dish was so well prepared and fresh ''',
              //           style: TextStyle(fontSize: 13, height: 1.2),
              //           children: [
              //             TextSpan(
              //               text: ' more',
              //               // onEnter: (event) {
              //               //   print('moreeeeeee');
              //               // },          
              //               style: TextStyle(
              //                   color: Constants.kLigthBlueColor,
              //                   fontSize: 13,
              //                   height: 1.2),
              //             ),
              //             // InkWell(
              //             //   child: Text('data'),
              //             //   onTap: (){},
              //             // ),
              //           ])),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
