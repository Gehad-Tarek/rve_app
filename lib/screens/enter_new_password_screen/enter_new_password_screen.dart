import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../shared/shared_widgets/app_bar_image_sign_in_up.dart';
import 'partition_new_password.dart';

class EnterNewPasswordScreen extends StatefulWidget {
  const EnterNewPasswordScreen({super.key});

  @override
  State<EnterNewPasswordScreen> createState() => _EnterNewPasswordScreenState();
}

class _EnterNewPasswordScreenState extends State<EnterNewPasswordScreen> {
  GlobalKey<FormState> _formKeyNewPassword = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: Form(
          key: _formKeyNewPassword,
          child:
              ListView(shrinkWrap: true, padding: EdgeInsets.zero, children: [
            SizedBox(
              height: height ,//- height * .18,
              width: width,
              child:  Stack(
                children: [
                  AppBarImageSigninAndUp(heightAppBarImage: height * 0.55,paddingHeiImage: height == 640 ? 10: height * 0.1,widthImage: width*0.44,fontSizedStyle: Constants.TwhileBoldFont),
                 const PartitionNewPassword(),
                ],
              ),
            ),
          ])),
    );
  }
}
