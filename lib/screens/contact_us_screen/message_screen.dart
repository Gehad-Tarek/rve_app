import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'partition_message_screen.dart';
import '../../shared/shared_widgets/app_bar_image_sign_in_up.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
 final  GlobalKey<FormState> _formKeyMessageScreenUs = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: ListView(
        shrinkWrap: true, padding: EdgeInsets.zero,
        children: [
    SizedBox(
              height: height ,//- height * .18,
              width: width,
              child:  Stack(
                children: [//paddingHeiImage: height == 640 ? 10: height * 0.1
                  AppBarImageSigninAndUp(heightAppBarImage: height * 0.55,paddingHeiImage: height <=812 ? 10: height * 0.1,widthImage: width*0.44,fontSizedStyle: Constants.TwhileBoldFont),
             const PartitionMessageScreen(),
                ],
              ),
            ),
      ]),
    );
  }
}