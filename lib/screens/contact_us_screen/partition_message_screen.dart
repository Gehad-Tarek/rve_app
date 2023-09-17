import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/shared/shared_widgets/elevated_button_widget.dart';
import 'package:rev_app/shared/shared_widgets/fild_components.dart';

class PartitionMessageScreen extends StatefulWidget {
  const PartitionMessageScreen({super.key});

  @override
  State<PartitionMessageScreen> createState() => _PartitionMessageScreenState();
}

class _PartitionMessageScreenState extends State<PartitionMessageScreen> {
   TextEditingController nameMessageController = TextEditingController();
  TextEditingController emailMessageController = TextEditingController();
  TextEditingController messageUsController = TextEditingController();
  GlobalKey<FormState> nameMessageKey = GlobalKey<FormState>();
  GlobalKey<FormState> emailMessageKey = GlobalKey<FormState>();
  GlobalKey<FormState> messageUsKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      top:height <= 812 ? height * 0.2 : height * 0.3,
      left: width * 0.08,
      right: width * 0.08,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: height * 0.014),
        height:height <= 812 ? height * 0.68 : height * 0.55,//667
        width: width * 0.7,
        decoration: BoxDecoration(
          color: Constants.kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset:const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Center(child: Text('Contact Us', style: Constants.TtitleBlackFont)),
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
            CustomField(FieldModel(
              controller: nameMessageController,
              //   icon: Icons.email,
              labelTxt: 'Name',
              type: TextInputType.name,
              onsumbit: () {},
              key: nameMessageKey,
            )),
            CustomField(FieldModel(
              controller: emailMessageController,
              //   icon: Icons.email,
              labelTxt: 'Email',
              type: TextInputType.emailAddress,
              onsumbit: () {},
              key:emailMessageKey,
            )),
             CustomField(FieldModel(
              maxLines: 3,
              controller: messageUsController,
              //   icon: Icons.email,
              labelTxt: 'Message',
              type: TextInputType.text,
              onsumbit: () {},
              key:messageUsKey,
            )),
            SizedBox(
              height: height * 0.03,
            ),
            ElevatedButtonWidget(
                onPressed: () {},
                height: height * 0.06,
                width: width * 0.73,
                text: 'Send',
                cBorder: Colors.transparent,
                cButton: Constants.kBlueColor,
                cText: Constants.kWhiteColor,
                alignment: null,
                ),
            
          ],
        ),
      ),
    );
  }
}