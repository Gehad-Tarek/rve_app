import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/shared/shared_widgets/elevated_button_widget.dart';
import 'package:rev_app/shared/shared_widgets/fild_components.dart';

class PartitionNewPassword extends StatefulWidget {
  const PartitionNewPassword({super.key});

  @override
  State<PartitionNewPassword> createState() => _PartitionNewPasswordState();
}

class _PartitionNewPasswordState extends State<PartitionNewPassword> {
   TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> newPasswordKey = GlobalKey<FormState>();
  GlobalKey<FormState> confirmPasswordKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
   return Positioned(
      top: height * 0.3,
      left: width * 0.08,
      right: width * 0.08,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: height * 0.014),
        height:height>800?height*0.4: height * 0.47,
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
            Center(child: Text('Enter New Password', style: Constants.TtitleBlackFont)),
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
              controller: newPasswordController,
              //   icon: Icons.email,
              labelTxt: 'New Password',
              type: TextInputType.visiblePassword,
              onsumbit: () {},
              key: newPasswordKey,
            )),
            CustomField(FieldModel(
              controller: confirmPasswordController,
              //   icon: Icons.email,
              labelTxt: 'Confirm Passward',
              type: TextInputType.visiblePassword,
              onsumbit: () {},
              key:confirmPasswordKey,
            )),
            SizedBox(
              height: height * 0.03,
            ),
            ElevatedButtonWidget(
                onPressed: () {},
                height: height * 0.06,
                width: width * 0.73,
                text: 'Vertify',
                cBorder: Colors.transparent,
                cButton: Constants.kBlueColor,
                cText: Constants.kWhiteColor,
               alignment: Alignment.center,),
            
          ],
        ),
      ),
    );
  }
}