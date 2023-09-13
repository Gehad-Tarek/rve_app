import 'package:flutter/material.dart';
import 'package:rev_app/screens/enter_new_password_screen/partition_new_password.dart';
import 'package:rev_app/shared/shared_widgets/app_bar_image_sign_in_up.dart';

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
              child: const Stack(
                children: [
                  AppBarImageSigninAndUp(),
                  PartitionNewPassword(),
                ],
              ),
            ),
          ])),
    );
  }
}
