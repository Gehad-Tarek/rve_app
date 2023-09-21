import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/screens/reply_done_screen.dart/partition_reply_done_screen.dart';
import 'package:rev_app/shared/shared_widgets/app_bar_image_sign_in_up.dart';

class ReplyDoneScreen extends StatefulWidget {
  const ReplyDoneScreen({super.key});

  @override
  State<ReplyDoneScreen> createState() => _ReplyDoneScreenState();
}

class _ReplyDoneScreenState extends State<ReplyDoneScreen> {
  @override
  Widget build(BuildContext context) {
       final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: ListView(shrinkWrap: true, padding: EdgeInsets.zero, 
  // physics:const NeverScrollableScrollPhysics(),
      children: [
        SizedBox(
          height: height, //- height * .18,
          width: width,
          child: Stack(
            children: [
              AppBarImageSigninAndUp(
                  heightAppBarImage: height * 0.44,
                  paddingHeiImage: height <= 677 ? height*0.03 : height * 0.07,
                  widthImage: width * 0.44,
                  fontSizedStyle: Constants.TwhileBoldFont),
       const PartitionReplyDoneScreen(),
           
            ],
          ),
        ),
      ]),
    );
  }
}