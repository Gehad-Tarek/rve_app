import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/screens/login_screen/app_bar_imageLogin.dart';
import 'package:rev_app/screens/login_screen/partition_login.dart';
import 'package:rev_app/shared_widgets/elevated_button_widget.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: height - height * .18,
              width: width,
              child:const Stack(
                children: [
                 AppBarImageLogin(),
                PartitionLogin(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.07),
              child: ElevatedButtonWidget(
                  onPressed: () {},
                  height: height * 0.06,
                  width: width * 0.8,
                  text: 'Guest',
                  cBorder: Constants.kBlueColor,
                  cButton: Constants.kWhiteColor,
                  cText: Constants.kBlackColor),
            )
          ],
        ),
      ),
    );
  }
}
