import 'package:flutter/material.dart';
import 'package:rev_app/screens/sign_up_screen/partition_sign_up.dart';
import 'package:rev_app/shared/shared_widgets/app_bar_image_sign_in_up.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> _formKeySignUp = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: Form(
        key: _formKeySignUp,
        child: ListView(shrinkWrap: true, padding: EdgeInsets.zero, children: [
          SizedBox(
            height: height, //- height * .18,
            width: width,
            child: const Stack(
              children: [
                AppBarImageSigninAndUp(),
                PartitionSignUp(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
