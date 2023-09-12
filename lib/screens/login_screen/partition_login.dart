import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/shared_widgets/elevated_button_widget.dart';
import 'package:rev_app/shared_widgets/fild_components.dart';
import 'package:rev_app/shared_widgets/text_button_widget.dart';

class PartitionLogin extends StatefulWidget {
  const PartitionLogin({super.key});
  @override
  State<PartitionLogin> createState() => _PartitionLoginState();
}

class _PartitionLoginState extends State<PartitionLogin> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> userNameKey = GlobalKey<FormState>();
  GlobalKey<FormState> passwordKey = GlobalKey<FormState>();
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
        height: height * 0.45,
        width: width * 0.7,
        decoration: BoxDecoration(
          color: Constants.kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Center(child: Text('Log in', style: Constants.TtitleBlackFont)),
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
              controller: userNameController,
              //   icon: Icons.email,
              labelTxt: 'user Name',
              type: TextInputType.emailAddress,
              onsumbit: () {},
              key: userNameKey,
            )),
            CustomField(FieldModel(
              controller: passwordController,
              //   icon: Icons.email,
              labelTxt: 'Passward',
              type: TextInputType.emailAddress,
              onsumbit: () {},
              key: passwordKey,
            )),
            SizedBox(
              height: height * 0.03,
            ),
            ElevatedButtonWidget(
                onPressed: () {},
                height: height * 0.06,
                width: width * 0.73,
                text: 'Log in',
                cBorder: Colors.transparent,
                cButton: Constants.kBlueColor,
                cText: Constants.kWhiteColor),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(),
                TextButtonWidget(
                  onPressed: () {},
                  text: 'Forget Password?',
                  decoration: TextDecoration.underline,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
