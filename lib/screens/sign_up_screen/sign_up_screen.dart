import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../shared/shared_widgets/app_bar_image_sign_in_up.dart';
import 'partition_sign_up.dart';

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
            child:  Stack(
              children: [
                AppBarImageSigninAndUp(heightAppBarImage: height * 0.55,paddingHeiImage: height == 640 ? 10: height * 0.1,widthImage: width*0.44,fontSizedStyle: Constants.TwhileBoldFont,),
              const  PartitionSignUp(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
